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

mkdir ~/desktop
rmdir ~/Desktop
mkdir ~/internet
rmdir ~/Downloads
mkdir ~/templates
mv ~/Templated/* ~/templates
rmdir ~/Templates
mkdir ~/public
rmdir ~/Public
mkdir ~/documents
rmdir ~/Documents
mkdir ~/music
rmdir ~/Music
mkdir ~/pictures
rmdir ~/Pictures
mkdir ~/videos
rmdir ~/Videos

[ -e ${HOME}/.config/user-dirs.dirs ] && mv ${HOME}/.config/user-dirs.dirs{,.bak}
mv ../bash/user-dirs.dirs ${HOME}/.config/user-dirs.dirs
