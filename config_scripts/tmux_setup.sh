# Make backup of existing .tumx.conf
[ -e ${HOME}/.tmux.conf ] && mv ${HOME}/.tmux.conf ${HOME}/.tmux.conf.bak

# Link the tmux config files to the new location
ln -s $( readlink -f ../tmux/.tmux.conf ) ${HOME}/.tmux.conf

