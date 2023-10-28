#!/bin/bash
sudo apt update
sudo apt install -y git vim tmux curl

# python, pip and virtual environment
sudo apt install -y python3-dev python3-pip

sudo snap install sublime-text --classic
sudo snap install sublime-merge --classic
sudo snap install chromium
sudo snap install code --classic


git submodule update --init --recursive

# tmux: 
apt install fonts-powerline xsel
fc-cache -vf ~/.local/share/fonts  # installs locally installed fonts


# gnome-terminal:
sudo apt-get install dconf-cli uuid-runtime  # gogh dependencies


# install nord theme 
export TERMINAL=gnome-terminal
