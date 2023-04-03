#!/bin/bash

alias overlay_thordev="source ~/thor_dev/ros_ws/devel/setup.bash && echo \"Sourced thor_dev ROS workspace.\""

# ROS
source /opt/ros/noetic/setup.bash

# robocup
# export ROS_MASTER_URI=http://192.168.27.252:11311
# export ROS_IP=192.168.0.153
source ~/thor_dev/ros_ws/devel/setup.bash
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

workon rcenv