#!/bin/bash
sudo apt update
sudo apt install git vim fonts-powerline

# installs locally installed fonts
sudo fc-cache -vf ~/.local/share/fonts


# gogh dependencies
sudo apt-get install dconf-cli uuid-runtime

git submodule update --init --recursive

# install nord theme 
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
${SCRIPT_DIR}/Gogh/themes/nord.sh