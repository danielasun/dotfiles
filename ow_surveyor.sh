#!/bin/bash

# ow_bash.sh

source ~/.dotfiles/ow_symbols.sh

# ROS specific
export ROS_DOMAIN_ID=100
source /opt/ros/galactic/setup.bash


OFFWORLD_HOME="/home/offworld"
export PYTHONPATH=$PYTHONPATH:/home/offworld/swarm-robotic-mining/dev_ws/src
export OFFWORLD_HOME=${OFFWORLD_HOME}

export IGN_GAZEBO_RESOURCE_PATH=${OFFWORLD_HOME}/catkin_ws/src:${OFFWORLD_HOME}/catkin_ws/src/motoman_ow:${OFFWORLD_HOME}/catkin_ws/src/universal_robot:$IGN_GAZEBO_RESOURCE_PATH
