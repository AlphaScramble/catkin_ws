#!/usr/bin/env python3

import cv2 
import numpy as np
import math


camera=cv2.VideoCapture("donen_serit.mp4")
lower_red=np.array([0, 50, 60])
upper_red=np.array([179, 255, 255])

while True:

    ret,frame=camera.read()
    hsv=cv2.cvtColor(frame,cv2.COLOR_BGR2HSV)
   
    red_img=cv2.inRange(hsv,lower_red,upper_red)
    #adges=cv2.Canny(red_img,75,150)
    lines =cv2.HoughLinesP(red_img,1,np.pi/180,150,maxLineGap=100)
    print(lines)
    print("========")


    if lines is not None:

        #cordinates=lines_choice(lines)
        cordinates = np.mean(lines, axis=0)
        cordinates = cordinates.astype(int)
        cv2.line(frame,(cordinates[0][0],cordinates[0][1]),(cordinates[0][2],cordinates[0][3]),(0,255,0),5)

    cv2.imshow("frame",frame)
    cv2.imshow("bw",red_img)
    

    if cv2.waitKey(60) & 0xFF ==ord("q"):
        break

camera.release()

cv2.destroyAllWindows()


    

    