#!/usr/bin/env python
import rospy
import roslib
from std_msgs.msg import String
from std_msgs.msg import Float32
fromt kobuki_msgs.msg import Sound
average = [];
count = 0;
pub = rospy.Publisher('/mobile_base/commands/sound', Sound, queue_size=10)

def callback(data):
    average[count] = data.data;
    mean = sum(a) / a.size();
    count = count + 1;
    if count > 5:
      count = 0
    if mean > .1:
      print mean

    
def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # node are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('catch_gpError', anonymous=True)

    rospy.Subscriber("/calibration/ground_plane_error", Float32, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()