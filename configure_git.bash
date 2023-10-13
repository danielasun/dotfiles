#!/bin/bash

# Note: this doesn't work being run from the terminal, you have to run the commands individually from the command line?

git config --global user.email "sundaniel3@gmail.com"
git config --global user.name "Daniel Sun"

ln -sf ${SCRIPT_DIR}/gitignore_global ~/.gitignore
git config --global core.excludesfile ~/.gitignore