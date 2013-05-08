# prompt
PROMPT='%(0?.%F{green}✓.%F{red}✘)%F{red}▐%f%B%K{red} %n@%m %~%F{black}░▒%b%k%f'

# history
setopt APPEND_HISTORY HIST_FIND_NO_DUPS
HISTFILE="${HOME}/.zsh_history"
HISTSIZE='1000'
SAVEHIST="${HISTSIZE}"

# variables
export EDITOR="/usr/bin/nano"
export PATH="$PATH:~/john/run"

# aliases
alias ls='ls --color=auto'
alias ll="ls -l"
alias la="ls -la"

# keyboard
source "${HOME}/.goblinkeys.zsh"
bindkey -A goblin main

# misc
setopt autolist # automatically list suggested tab completions
setopt correct # spellcheck
setopt dvorak # spellcheck based on the best keyboard
setopt aliases # expand aliases

# ssh-only options
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
	setopt IGNORE_EOF # don't logout with an accidental ctl-d
fi
