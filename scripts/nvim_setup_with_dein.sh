#!/bin/bash

# Set the default folder for configuration files
export XDG_CONFIG_HOME="$HOME/.config"

# Check if nvim folder exists; if not, create it.
[! -d ${XDG_CONFIG_HOME}/nvim ] && mkdir -P ${XDG_CONFIG_HOME}/nvim

# Link the nvim config to the new location
ln -s $( readlink -f ../nvim/*.vim ) $XDG_CONFIG_HOME/nvim/

# Check if dein (nvim plugin manager) folder exists; if not, create it.
[! -d ~/.local/share/dein ] && mkdir -P ~/.local/share/dein

# Download dein and install it in the create folder
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.local/share/dein

# Clean-up
rm ./installer.sh
