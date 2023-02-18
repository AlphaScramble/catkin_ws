#!/usr/bin/env python
# -*- coding: UTF-8 -*-


import rospy
from ilk_paket.msg import camera

def func(data):


    
    rospy.loginfo('x1={},y1={},x2={},y2={}'.format(data.x1,data.y1,data.x2,data.y2))

rospy.init_node('tester_camera_datas',anonymous=True)  #bu dosyanın düğüm olduğunu belirttik ve tanımladık
rospy.Subscriber('drone_line_data',camera,func)    #abone olunacak topic ismi,verilerin çekileceği msg dosyası ve daha sonrasında veriler ile yapılacak işlemlerin tanımlandığı fonksiyon fonksiyona verildi
rospy.spin()

