#!/usr/bin/env python
#-*- coding: UTF-8 -*-

import rospy
import cv2
import numpy as np
from sensor_msgs.msg import Image
from ilk_paket.msg import ros_red
from cv_bridge import CvBridge, CvBridgeError
import sys


rospy.init_node("publishers", anonymous = True)
pub = rospy.Publisher("center_topic", ros_red, queue_size = 10)
bridge = CvBridge()
lowRed = np.array([161, 155, 84])
upRed = np.array([179, 255, 255])

def function(ros_image):


    print("got an image")
    global bridge

    try:

        frame = bridge.imgmsg_to_cv2(ros_image, "bgr8")
        frame = cv2.resize(frame, (540, 960))
        #frame = cv2.flip(frame, 1)

    except CvBridgeError as e:

        print(e)
    print("node çalışıyor")
    hsv = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)
    red_mask = cv2.inRange(hsv, lowRed, upRed)
    red = cv2.bitwise_and(frame, frame, mask = red_mask)
    red = cv2.resize(red, (540, 960))
    contours, hierarchy = cv2.findContours(red_mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)


    x, y, w, h = 0, 0, 0, 0
    if contours is not None:
        for contour in contours:
            if cv2.contourArea(contour) > 500:
                x, y, w, h = cv2.boundingRect(contour)
                cv2.rectangle(frame, (x,y), ((x+w), (y+h)), (255, 0, 0), 2)
                break

        center_data = ros_red()
        center_data.x1 = ((2 * x) + w) / 2
        center_data.y1 = ((2 * y) + h) / 2
        center = (center_data.x1, center_data.y1)

        cv2.circle(frame, (float(center_data.x1), float(center_data.x1)), 5, (255, 0, 0), cv2.FILLED)
        cv2.putText(red, str(center), (x, y), cv2.FONT_HERSHEY_PLAIN, 2, (255, 0, 0), 2)

        cv2.circle(red, (float(center_data.x1), float(center_data.x1)), cv2.FILLED)
        cv2.putText(frame, str(center), (x, y), cv2.FONT_HERSHEY_PLAIN, 2, (255, 0, 0), 2)

        
        rospy.loginfo(center_data)
        pub.publish(center_data) 


    cv2.imshow("mask", red)
    cv2.imshow("red", frame)



def main(args):
    
    rospy.Subscriber("/usb_cam/image_raw", Image, function)

    rate=rospy.Rate(75)

    rate.sleep()

    try:
        rospy.spin()
  
    except KeyboardInterrupt:
    
        print("Shutting down...")
        cv2.destroyAllWindows()


if __name__ == '__main__':
    main(sys.argv)


