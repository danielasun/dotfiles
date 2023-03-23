#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "Creating links from ${SCRIPT_DIR}"

ln -s ${SCRIPT_DIR}/bashrc ~/.bashrc
ln -s ${SCRIPT_DIR}/bash_aliases ~/.bash_aliases
ln -s ${SCRIPT_DIR}/tmux.conf ~/.tmux.conf

