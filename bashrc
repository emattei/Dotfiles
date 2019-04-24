export XDG_CONFIG_HOME="$HOME/.config"
ln -s $HOME/Git/Dotfiles/init.vim $XDG_CONFIG_HOME/nvim/init.vim

export EDITOR='nvim' # Make nvim the default 
export VISUAL='nvim' # system editor

alias vim='nvim'


#Col='\033[0m'
#Gre='\033[32m';
#Red='\033[31m';
#Blu='\033[34m';
#Yel='\033[33m';
#PS1="${RCol}┌─[\`if [ \$? = 0 ]; then echo "${Gre}"; else echo "${Red}"; fi\`\u\[${Rcol}\] \[${Blu}\]\h\[${RCol}\] \[${Yel}\]\w\[${RCol}\]]\n└─╼ "
#PS1="┌─[\`if [ \$? = 0 ]; then echo "${Gre}"; else echo "${Red}"; fi\`\u\[${Rcol}\] \[${Blu}\]\h\[${RCol}\] \[${Yel}\]\w\[${RCol}\e[m]\n└─╼ "
PS1="┌─[`if [ $? = 0 ]; then echo "\033[32m"; else echo "\033[31m"; fi`\u\[\] \[\033[34m\]\h\[\] \[\033[33m\]\w\[\e[m]\n└─╼ "
