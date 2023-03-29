#!/bin/bash

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

echo "Creating links from ${SCRIPT_DIR}"

ln -sf ${SCRIPT_DIR}/bashrc ~/.bashrc
ln -sf ${SCRIPT_DIR}/bash_aliases ~/.bash_aliases
ln -sf ${SCRIPT_DIR}/tmux.conf ~/.tmux.conf
ln -sf ${SCRIPT_DIR} ~/.dotfiles
