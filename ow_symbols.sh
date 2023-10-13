#!/bin/bash

# ow_aliases and environment variables

alias goto_srm='cd /home/dsun/swarm-robotic-mining'
alias overlay_ros2srm='source /home/dsun/swarm-robotic-mining/ros2_ws/install/setup.bash && echo "Sourced srm ROS2 workspace."'
alias overlay_ros1srm='source /home/dsun/swarm-robotic-mining/catkin_ws/devel/setup.bash && echo "Sourced srm ROS1 workspace."'
alias setenv='export $(cat /home/dsun/swarm-robotic-mining/.env | xargs)'
alias setdevws='export PYTHONPATH=$PYTHONPATH:~/offworld/swarm-robotic-mining/dev_ws/src && echo "Added dev_ws to PYTHONPATH."'

export ROS_DOMAIN_ID=100