#!/bin/bash
sudo apt update
sudo apt install git vim fonts-powerline

# installs locally installed fonts
sudo fc-cache -vf ~/.local/share/fonts

