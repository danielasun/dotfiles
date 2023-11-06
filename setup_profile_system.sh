#!/bin/bash

# Script to set up the profile system. To make sure that it
# doesn't re-run the same command over and over, it will
# check for the file PROFILE_SYSTEM_SETUP and if not, it
# will perform the install process.

VIRTUALENV_NAME="dotfile_env"

# make sure to run the command without sudo!
if [ "$EUID" -eq 0 ]; then
    echo "This script should not be run with sudo. Please run it as a regular user."
    exit 1
fi


if [ -e "PROFILE_SYSTEM_SETUP" ]; then
  echo "Profile system has already been configured. Exiting."
else
    echo "Configure python install"
    
    # python, pip and virtual environment
    sudo apt install -y python3-dev python3-pip
    pip3 install virtualenv virtualenvwrapper # local install of virtualenv and virtualenvwrapper
    source ~/.local/bin/virtualenvwrapper.sh # create hooks

    # create virtualenv using virtualenvwrapper
    mkvirtualenv $VIRTUALENV_NAME
    pip install -r config_requirements.txt

    # create file marker to note that the directory has been configured.
    echo "Profile system setup complete."
    touch PROFILE_SYSTEM_SETUP
fi


