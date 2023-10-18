#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
mkdir -p /home/${USER}/.config/sublime-text/Packages/User/
cp -r ${SCRIPT_DIR}/Preferences.sublime-settings /home/${USER}/.config/sublime-text/Packages/User/Preferences.sublime-settings