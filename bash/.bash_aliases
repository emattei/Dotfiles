
# Enable color support of ls and also add handy aliases
# using 'always' instead of 'auto' so it will be preserved
# when piped to other programs like less.
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dir_colors && eval "$(dircolors -b ~/.dir_colors)" || eval "$(dircolors -b)"

    alias ls='ls --group-directories-first --color=always'
    alias dir='dir --color=always'
    alias vdir='vdir --color=always'

    alias grep='grep --color=always'
    alias fgrep='grep -F --color=always'
    alias egrep='grep -E --color=always'
fi

alias ll='ls -AhlF --group-directories-first'
alias la='ls -Ah --group-directories-first'
alias l='ls -CF --group-directories-first'

# call neovim with just 'v'
alias v='nvim'
alias vimdiff='nvim -d'

alias cp='cp -i'     # Ask before overwrite
alias df='df -h'     # Human readable sizes
alias free='free -m' # Show free memory in MB
alias o='xdg-open'

# Shortcut to go up two and three folders
alias ..='cd ../'
alias ...='cd ../../'

# Average load at 1, 5 and 15 min for tmux
alias load='uptime | grep --color=no -oP [0-9]\\.[0-9]+ | tr "\n" " " | awk "{print}"'

# Add an "alert" alias for long running commands.  Use like so:
#  sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

