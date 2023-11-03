#!/bin/bash

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

sudo apt update
sudo apt install -y git vim tmux curl tree htop

# python, pip and virtual environment
sudo apt install -y python3-dev python3-pip
pip3 install virtualenv virtualenvwrapper # local install of virtualenv and virtualenvwrapper
source ~/.local/bin/virtualenvwrapper.sh # create hooks

sudo snap install sublime-text --classic
sudo snap install sublime-merge --classic
sudo snap install chromium
sudo snap install code --classic

# update submodules
git submodule update --init --recursive

# tmux: 
sudo apt install fonts-powerline xsel
fc-cache -vf ~/.local/share/fonts  # installs locally installed fonts


# gnome-terminal:
sudo apt-get install dconf-cli uuid-runtime  # gogh dependencies


# install nord theme 
export TERMINAL=gnome-terminal
$SCRIPT_DIR/gnome-terminal/src/nord.sh