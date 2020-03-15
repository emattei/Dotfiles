#!/bin/bash

# Check if nvim folder exists; if not, create it.
[ ! -d ${XDG_CONFIG_HOME}/nvim ] && mkdir -p ${XDG_CONFIG_HOME}/nvim

# Link the nvim config to the new location
ln -s $( readlink -f ../nvim/*.vim ) $XDG_CONFIG_HOME/nvim/

# Check if dein (nvim plugin manager) folder exists; if not, create it.
[ ! -d ~/.local/share/dein ] && mkdir -p ~/.local/share/dein

# Download dein and install it in the create folder
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.local/share/dein

# Clean-up
rm ./installer.sh

# Required for:
# code completion: jedi
# code linting: flake8
# code formatting: autopep8
pip3 install --user jedi flake8 autopep8

bash ./yarn_installer.sh

# Fix the missing fonts for the shell
# It still needs to be set up manually
[ ! -d ~/.local/share/fonts ] && mkdir -p ~/.local/share/fonts
wget https://github.com/powerline/fonts/raw/master/FiraMono/FuraMono-Medium%20Powerline.otf -P ~/.local/share/fonts/
fc-cache -f ~/.local/share/fonts
