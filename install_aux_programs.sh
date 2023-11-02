#!/bin/bash

sudo apt install -y gnome-tweaks
sudo snap install spotify
sudo snap install plotjuggler
sudo snap set plotjuggler ros-plugin-version=2
sudo snap install zotero-snap

# no machine download and install
curl https://download.nomachine.com/download/8.9/Linux/nomachine_8.9.1_1_amd64.deb -o nomachine.deb
sudo apt install ./nomachine.deb
rm ./nomachine.deb