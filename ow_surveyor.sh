#!/bin/bash

# ow_bash.sh

source ~/.dotfiles/ow_aliases.sh

# ROS specific
export ROS_DOMAIN_ID=100
source /opt/ros/galactic/setup.bash


export PYTHONPATH=$PYTHONPATH:/home/offworld/swarm-robotic-mining/dev_ws/src
export OFFWORLD_HOME=/home/offworld
. "$HOME/.cargo/env"

