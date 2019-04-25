export XDG_CONFIG_HOME="$HOME/.config"
ln -s $HOME/Git/Dotfiles/init.vim $XDG_CONFIG_HOME/nvim/init.vim

export EDITOR='nvim' # Make nvim the default 
export VISUAL='nvim' # system editor

alias vim='nvim'

PS1="┌─[`if [ $? = 0 ]; then echo "\033[32m"; else echo "\033[31m"; fi`\u\[\] \[\033[34m\]\h\[\] \[\033[33m\]\w\[\e[m]\n└─╼ "
