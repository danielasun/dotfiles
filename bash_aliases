#!/bin/bash

alias goto_srm='cd /home/dsun/swarm-robotic-mining'
alias overlay_ros2srm='source /home/dsun/swarm-robotic-mining/ros2_ws/install/setup.bash'
alias overlay_ros1srm='source /home/dsun/swarm-robotic-mining/ros2_ws/install/setup.bash'
alias setenv='export $(cat /home/dsun/swarm-robotic-mining/.env | xargs)'
alias catkin_clean='rm -rf build/ devel/'
alias colcon_clean='rm -rf build/ install/ log/'