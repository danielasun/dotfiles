#!/bin/bash
apt update
apt install git vim tmux curl

# python, pip and virtual environment
apt install python3-dev python3-pip virtualenv virtualenvwrapper

snap install sublime-text --classic
snap install sublime-merge --classic
snap install chromium
snap install code --classic


git submodule update --init --recursive

# tmux: 
apt install fonts-powerline xsel
fc-cache -vf ~/.local/share/fonts  # installs locally installed fonts


# gnome-terminal:
apt-get install dconf-cli uuid-runtime  # gogh dependencies


# install nord theme 
export TERMINAL=gnome-terminal