# Check for an interactive session
[ -z "$PS1" ] && return

PS1='\[\e[40;0;31m\e[41;1;37m\] \u@\h \W \[\e[40;0;31m\]▓▒░\[\e[0m\]'

# expand all "bangs" in a line into their full lines by pressing the space bar
bind '" ":magic-space'

CDPATH=:~

alias suod=sudo
alias naon=nano
alias ls='ls --color=auto'
alias ll="ls -l"
alias la="ls -la"

export HISTCONTROL=ignoreboth:erasedups
