# Make backup of existing .bashrc, .bash_aliases, .dir_colors
[ -e ${HOME}/.bashrc ] && mv ${HOME}/.bashrc ${HOME}/.bashrc.bak
[ -e ${HOME}/.bash_aliases ] && mv ${HOME}/.bash_aliases ${HOME}/.bash_aliases.bak
[ -e ${HOME}/.dir_colors ] && mv ${HOME}/.dir_colors ${HOME}/.dir_colors.bak

# Link the bash config files to the new location
ln -s $( readlink -f ../bash/.bashrc ) ${HOME}/.bashrc
ln -s $( readlink -f ../bash/.bash_aliases ) ${HOME}/.bash_aliases
ln -s $( readlink -f ../bash/.dir_colors.256dark ) ${HOME}/.dir_colors

# Add the new scripts to path
[ ! -d ${HOME}/.local/bin ] && mkdir ${HOME}/.local/bin
ln -s $( readlink -f ../bin/* ) ~/.local/bin/
