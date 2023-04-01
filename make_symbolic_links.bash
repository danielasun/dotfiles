#!/bin/bash

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

echo "Creating links from ${SCRIPT_DIR}"

ln -sf ${SCRIPT_DIR} ~/.dotfiles  # makes a symbolic link to this folder so that it's easier to reference this location 
ln -sf ${SCRIPT_DIR}/bashrc ~/.bashrc
ln -sf ${SCRIPT_DIR}/bash_aliases ~/.bash_aliases
ln -sf ${SCRIPT_DIR}/tmux.conf ~/.tmux.conf

