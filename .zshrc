# prompt
PROMPT='%(0?.%F{green}✓.%F{red}✘)%F{red}▐%f%B%K{red} %n@%m %~%F{black}░▒%b%k%f'
#autoload -U colors && colors
#PROMPT="%(0?.%{$fg_no_bold[green]%}✓.%{$fg_no_bold[red]%}✘)%{$fg_no_bold[red]%}▐%{$reset_color%}%{$bg[red]%} %n@%m %~%{$fg[black]%}░▒%{$reset_color%}"

# history
setopt APPEND_HISTORY HIST_FIND_NO_DUPS HISTIGNORESPACE
HISTFILE="${HOME}/.zsh_history"
HISTSIZE='1000'
SAVEHIST="${HISTSIZE}"

# variables
export GOPATH="$HOME/Desktop/go"
export EDITOR="/usr/bin/nano"
export PATH="$PATH:$HOME/john/run:/cygdrive/c/Go/bin:$HOME/perl5/bin"
export JAVA_HOME="/cygdrive/c/Program Files/Java/jdk1.7.0_45"
# basic ls colors
export LS_COLORS="di=01;34:fi=0:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01"
# archive ls colors
export LS_COLORS="$LS_COLORS:*.tar=33:*.tgz=33:*.tbz=33:*.tbz2=33:*.tb2=33:*.tlz=33:*.txz=33:*.gz=33:*.bz2=33:*.xz=33:*.lz=33:*.lzma=33:*.7z=33"
export PERL5LIB=~/perl5/lib/perl5
export PERL_MB_OPT="--install_base '$HOME/perl5'"
export PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"

# aliases
alias ls='ls --color=auto'
alias ll="ls -l"
alias la="ls -la"
alias lfind="find . -name"
alias npp="/cygdrive/c/Program\ Files\ \(x86\)/Notepad++/notepad++.exe"
alias ecl="/cygdrive/c/Program\ Files\ \(x86\)/EclipseSDK/4.2.1/eclipse/eclipse.exe"

# keyboard
source "${HOME}/.goblinkeys.zsh"
bindkey -A goblin main
bindkey -M goblin ' ' magic-space
bindkey -M goblin '^^' push-line-or-edit #ctl-enter

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

autoload -Uz compinit && compinit

# misc
setopt AUTOLIST COMPLETE_IN_WORD # make completions behave
setopt CORRECT DVORAK # spellcheck
setopt ALIASES # expand aliases

# ssh-only options
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
	setopt IGNORE_EOF # don't logout with an accidental ctl-d
fi
