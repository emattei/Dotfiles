#!/usr/bin/bash
ssh-keygen -t rsa -b 4096 -C $EMAIL
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github
xclip -sel clip < ~/.ssh/github.pub
