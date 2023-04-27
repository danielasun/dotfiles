#!/bin/bash

# ow_aliases

alias goto_srm='cd /home/dsun/swarm-robotic-mining'
alias overlay_ros2srm='source /home/dsun/swarm-robotic-mining/ros2_ws/install/setup.bash'
alias overlay_ros1srm='source /home/dsun/swarm-robotic-mining/catkin_ws/devel/setup.bash && echo "Sourced srm ROS1 workspace."'
alias setenv='export $(cat /home/dsun/swarm-robotic-mining/.env | xargs)'
alias setdevws='export PYTHONPATH=$PYTHONPATH:~/offworld/swarm-robotic-mining/dev_ws/src && echo "Added dev_ws to PYTHONPATH."'