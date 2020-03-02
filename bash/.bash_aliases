

# enable color support of ls and also add handy aliases
# using 'always' instead of 'auto' so it will be preserved
# when piped to other programs like less.
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dir_colors && eval "$(dircolors -b ~/.dir_colors)" || eval "$(dircolors -b)"

    alias ls='ls -h --color=always'
    alias dir='dir --color=always'
    alias vdir='vdir --color=always'

    alias grep='grep --color=always'
    alias fgrep='fgrep --color=always'
    alias egrep='egrep --color=always'
fi

alias ll='ls -AhlF'
alias la='ls -Ah'
alias l='ls -CF'

# call neovim with just 'v'
alias v='nvim'

# Add an "alert" alias for long running commands.  Use like so:
#  sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

