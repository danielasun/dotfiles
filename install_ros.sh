#!/bin/bash
sudo apt install software-properties-common
sudo add-apt-repository universe

sudo apt update && sudo apt install curl
# sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
# sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# add new repository key and remove old repo key:
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# sudo apt-key del 421C365BD9FF1F717815A3895523BAEEB01FA116 # remove old repository key:

sudo apt update
sudo apt install ros-noetic-desktop-full
sudo apt install ros-galactic-desktop-full