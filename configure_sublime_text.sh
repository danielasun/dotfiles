#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cp ${SCRIPT_DIR}/Preferences.sublime-settings /home/${USER}/.config/sublime-text-3/Packages/User/Preferences.sublime-settings