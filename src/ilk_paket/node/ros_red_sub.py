#!/usr/bin/env python
#-*- coding: UTF-8 -*-

import rospy 
from ilk_paket.msg import ros_red

rospy.init_node("subscribers", anonymous = True)

def function(data):

    rospy.loginfo("[INFO].. center is calculated: (%.2f)", data.center)


rospy.Subscriber("center_topic", ros_red, function)
rospy.spin()