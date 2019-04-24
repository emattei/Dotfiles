export XDG_CONFIG_HOME="$HOME/.config"
ln -s $HOME/Git/Dotfiles/init.vim $XDG_CONFIG_HOME/nvim/init.vim

export EDITOR='nvim' # Make nvim the default 
export VISUAL='nvim' # system editor

alias vim='nvim'
