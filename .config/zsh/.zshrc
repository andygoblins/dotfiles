# prompt
PROMPT='%(0?.%F{green}✓.%F{red}✘)%F{red}▐%f%B%K{red} %n@%m %~ %b%F{red}%K{black}▓▒░%k%f'
#autoload -U colors && colors
#PROMPT="%(0?.%{$fg_no_bold[green]%}✓.%{fg_no_bold[red]%}✘)%{$fg_no_bold[red]%}▐%{$fg_bold[white]$bg[red]%} %n@%m %~ %{$fg_no_bold[red]$bg[black]%}▓▒░%{$reset_color%}"

# history
setopt APPEND_HISTORY HIST_FIND_NO_DUPS HISTIGNORESPACE
HISTFILE="${ZDOTDIR}/.zsh_history"
HISTSIZE='1000'
SAVEHIST="${HISTSIZE}"

# aliases
alias ls='ls --color=auto'
alias ll="ls -l"
alias la="ls -la"

# keyboard
source "${ZDOTDIR}/.goblinkeys.zsh"
bindkey -A goblin main
bindkey -M goblin ' ' magic-space
bindkey -M goblin '^^' push-line-or-edit #ctl-enter

# completions
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate _prefix
zstyle ':completion:*' expand suffix
zstyle ':completion:*' ignore-parents parent
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' max-errors 2 numeric
zstyle ':completion:*' menu select=long
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' squeeze-slashes true

autoload -Uz compinit && compinit

# misc
setopt AUTOLIST COMPLETE_IN_WORD # make completions behave
setopt CORRECT DVORAK # spellcheck
setopt ALIASES # expand aliases

# ssh-only options
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
	setopt IGNORE_EOF # don't logout with an accidental ctl-d
fi
