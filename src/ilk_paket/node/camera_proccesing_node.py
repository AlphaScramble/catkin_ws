#!/usr/bin/env python
# -*- coding: UTF-8 -*-


import rospy
import cv2 
from sensor_msgs.msg import Image
from cv_bridge import CvBridge ,CvBridgeError
import sys
from ilk_paket.msg import camera,camera
import numpy as np




rospy.init_node("camera",anonymous=True)

pub=rospy.Publisher("drone_line_data",camera,queue_size=10)




lower_red=np.array([0, 50, 60])
upper_red=np.array([179, 255, 255])
bridge =CvBridge()

def func(ros_goruntu):
    print("GÖrüntü alindi")               

    global bridge 

    try:
        cv_goruntu=bridge.imgmsg_to_cv2(ros_goruntu,"bgr8")

    except CvBridgeError as e:
        print(e)

    camera_data=camera()

    

    hsv=cv2.cvtColor(cv_goruntu,cv2.COLOR_BGR2HSV)
    red_img=cv2.inRange(hsv,lower_red,upper_red)

    lines =cv2.HoughLinesP(red_img,1,np.pi/180,150,maxLineGap=100)
    #print(lines)
    #print("========")

    if lines is not None:
        cordinates = np.mean(lines, axis=0)
        cordinates = cordinates.astype(int)
        cv2.line(cv_goruntu,(cordinates[0][0],cordinates[0][1]),(cordinates[0][2],cordinates[0][3]),(0,255,0),5)
        

        camera_data.x1=int(cordinates[0][0])
        camera_data.y1=int(cordinates[0][1])
        camera_data.x2=int(cordinates[0][2])
        camera_data.y2=int(cordinates[0][3])

        print(camera_data.x1)

        pub.publish(camera_data)

    
    cv2.imshow("img",cv_goruntu)
    cv2.imshow("bw",red_img)



    if cv2.waitKey(1)   & 0xFF ==ord("q"):
        rospy.signal_shutdown("kapatiliyor")
        
rospy.Subscriber("/findikv1/camera1/image_raw",Image,func)      #/findikv1/camera1/image_raw       webcam topic=/cv_camera/image_raw


rate=rospy.Rate(75)

rate.sleep()

    

try:
    rospy.spin()
  
except KeyboardInterrupt:
    
    print("Kapatiliyor...")
    cv2.destroyAllWindows()



