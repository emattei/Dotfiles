#!/bin/bash

[! -d ~/.local/share/dein ] && mkdir -P ~/.local/share/dein

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
# For example, we just use `~/.cache/dein` as installation directory
sh ./installer.sh ~/.local/share/dein

rm ./installer.sh
