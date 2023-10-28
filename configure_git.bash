#!/bin/bash

# Configure git with email and username, symlink to global gitignore
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
git config --global user.email "sundaniel3@gmail.com"
git config --global user.name "Daniel Sun"

ln -sf ${SCRIPT_DIR}/gitignore_global ~/.gitignore
git config --global core.excludesfile ~/.gitignore
