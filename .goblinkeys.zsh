# implement goblinkeys for zsh

# disable ^U in stty
stty kill undef

# start (almost) tabula rasa
bindkey -N goblin .safe

# insert traditional terminal things
bindkey -M goblin "^V" quoted-insert

# navigation
bindkey -M goblin "^[[1;5l" beginning-of-line #ctl-, in mintty
bindkey -M goblin "^[[1;3C" beginning-of-history #alt-,
bindkey -M goblin "^P" end-of-line
bindkey -M goblin "^[p" end-of-history
bindkey -M goblin "^O" backward-char
bindkey -M goblin "^[[D" backward-char #left
bindkey -M goblin "^[o" backward-word
bindkey -M goblin "^[[1;5D" backward-word #ctl-left
bindkey -M goblin "^U" forward-char
bindkey -M goblin "^[[C" forward-char #right
bindkey -M goblin "^[u" forward-word
bindkey -M goblin "^[[1;5C" forward-word #ctl-right
bindkey -M goblin "^E" down-line-or-history
bindkey -M goblin "^[[B" down-line-or-history #down
bindkey -M goblin "^[e" end-of-history
bindkey -M goblin "^[[1;5B" end-of-history #ctl-down
bindkey -M goblin "^[[1;5n" up-line-or-history #ctl-. in mintty
bindkey -M goblin "^[[A" up-line-or-history #up
bindkey -M goblin "^[." beginning-of-history
bindkey -M goblin "^[[1;5A" beginning-of-history #ctl-up

# deletions
bindkey -M goblin "^D" delete-char-or-list
bindkey -M goblin "^[d" delete-word
bindkey -M goblin "^?" backward-delete-char
bindkey -M goblin "^_" backward-delete-word #ctl-bs in mintty

# copy/paste
bindkey -M goblin "^G" kill-region
bindkey -M goblin "^R" yank
bindkey -M goblin "^K" kill-line
bindkey -M goblin "^@" set-mark-command

# searching
bindkey -M goblin "^F" history-incremental-search-forward
bindkey -M goblin "^R" history-incremental-search-backward

# text
bindkey -M goblin "^[c" up-case-word
bindkey -M goblin "^L" down-case-word
bindkey -M goblin "^T" transpose-chars
bindkey -M goblin "^[t" transpose-words