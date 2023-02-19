#!/bin/bash
sudo apt update
sudo apt install git vim

sudo snap install sublime-text --classic
sudo snap install sublime-merge --classic

git submodule update --init --recursive

# tmux: 
sudo apt install fonts-powerline
sudo fc-cache -vf ~/.local/share/fonts  # installs locally installed fonts


# gnome-terminal:
sudo apt-get install dconf-cli uuid-runtime  # gogh dependencies


# install nord theme 
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
${SCRIPT_DIR}/Gogh/themes/nord.sh

