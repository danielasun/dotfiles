#!/bin/bash

# generate key
SSH_ALGO=ed25519
echo "Creating ssh key using algorithm ${SSH_ALGO}"
ssh-keygen -t ${SSH_ALGO} -C "sundaniel3@gmail.com"

# start ssh-agent in background
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519


cat ~/.ssh/id_ed25519.pub