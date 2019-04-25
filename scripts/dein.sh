#!/bin/bash

[! -d ~/.local/share/dein ] && mkdir -P ~/.local/share/dein

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.local/share/dein

rm ./installer.sh
