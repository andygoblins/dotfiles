# prompt
PROMPT='%(0?.%F{green}✓.%F{red}✘)%F{red}▐%f%B%K{red} %n@%m %~%F{black}░▒%b%k%f'
#autoload -U colors && colors
#PROMPT="%(0?.%{$fg_no_bold[green]%}✓.%{fg_no_bold[red]%}✘)%{$fg_no_bold[red]%}▐%{$reset_color%}%{$bg[red]%} %n@%m %~%{$fg[black]%}░▒%{$reset_color%}"

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
bindkey -M goblin ' ' magic-space

# completions
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate _prefix
zstyle ':completion:*' expand suffix
zstyle ':completion:*' ignore-parents parent
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
# when in Windows, do as DOS does (case-insensitive matching)
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' max-errors 2 numeric
zstyle ':completion:*' menu select=long
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' squeeze-slashes true
zstyle :compinstall filename '/cygdrive/c/Users/caud355/.zshrc'

autoload -Uz compinit && compinit

# misc
setopt AUTOLIST COMPLETE_IN_WORD # make completions behave
setopt CORRECT DVORAK # spellcheck
setopt ALIASES # expand aliases

# ssh-only options
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
	setopt IGNORE_EOF # don't logout with an accidental ctl-d
fi
