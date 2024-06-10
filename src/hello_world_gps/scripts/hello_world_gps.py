#!/usr/bin/env python3

import rospy  # ROS Python API

from libsbp_ros_msgs.msg import MsgBaselineHeading  # GPS Heading
from libsbp_ros_msgs.msg import MsgPosLlh  # GPS Position
from sensor_msgs.msg import NavSatFix  # GPS

# End of Imports --------------------------------------------------------------


# Start of Callbacks and Functions --------------------------------------------

def gps_heading_callback(msg):
    """Report the GPS heading"""
    global gps_heading

    gps_heading = msg.heading


def gps_position_callback(msg):
    """Report the GPS position"""
    global gps_latitude, gps_longitude

    gps_latitude = msg.lat
    gps_longitude = msg.lon


def publish_status(TimerEvent):
    """Create and publish status message. Rate controlled by ropy.Timer"""
    global gps_latitude, gps_longitude, gps_heading

    # Make NavSatFix message
    nav_sat_fix_msg = NavSatFix()
    nav_sat_fix_msg.header.stamp = rospy.Time.now()
    nav_sat_fix_msg.header.frame_id = "map"
    nav_sat_fix_msg.status.status = 1
    nav_sat_fix_msg.status.service = 1
    nav_sat_fix_msg.latitude = gps_latitude
    nav_sat_fix_msg.longitude = gps_longitude

    pub_navsatfix.publish(nav_sat_fix_msg)

    # Make heading
    


# End of Callbacks and Functions ----------------------------------------------


# Start of ROS node -----------------------------------------------------------
rospy.init_node("hello_world_gps")  # Namespace is set in launch file. '/actor' by default

# Initialize global variables in a dictionary -----
globals_dict = {
    "gps_heading": 0.0,
    "gps_latitude": 0.0,
    "gps_longitude": 0.0,
}

# Make all variables global
globals().update(globals_dict)

rospy.Subscriber(rospy.get_param("~gps_heading"), MsgBaselineHeading, gps_heading_callback, queue_size=1)
rospy.Subscriber(rospy.get_param("~gps_position"), MsgPosLlh, gps_position_callback, queue_size=1)

# Status publishers
pub_navsatfix = rospy.Publisher("fix", NavSatFix, queue_size=1)
rate = 100  # Hz
rospy.Timer(rospy.Duration(1 / rate), publish_status)

rospy.loginfo("actor_status node running.")
try:
    rospy.spin()
except rospy.ROSInterruptException:
    pass

# End of ROS node -------------------------------------------------------------