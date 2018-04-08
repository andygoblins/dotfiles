PS1="\[\e[40;0;31m\e[41;1;37m\]\w \$ \[\e[0m\]"

# history
HISTCONTROL=ignoredups:ignorespace
HISTFILE=~/.ksh_history
HISTSIZE=1000

# aliases
alias naon=nano
alias ll="ls -l"
alias la="ls -la"

# goblinkeys

## terminal stuff
bind '^V'=quote
bind '^I'=complete-list
bind '^M'=newline-and-next
bind '^L'=redraw
bind '^[ '=expand-file

## navigation
bind '^[[1;5l'=beginning-of-line #ctl-, in mintty
bind '^[[H'=beginning-of-line #PC-style home
bind '^[OH'=beginning-of-line
bind '^[[1~'=beginning-of-line #vt220 home
bind '^[,'=beginning-of-history
bind '^[[1;3H'=beginning-of-history #alt-home
bind '^P'=end-of-line
bind '^[[F'=end-of-line #PC-style end
bind '^[OF'=end-of-line
bind '^[[4~'=end-of-line #vt220 end
bind '^[p'=end-of-history
bind '^[[1;3F'=end-of-history #alt-end
bind '^O'=backward-char
bind '^[[D'=backward-char #left
bind '^[OD'=backward-char
bind '^[o'=backward-word
bind '^[[1;5D'=backward-word #ctl-left
bind '^U'=forward-char
bind '^[[C'=forward-char #right
bind '^[OC'=forward-char
bind '^[u'=forward-word
bind '^[[1;5C'=forward-word #ctl-right
bind '^E'=down-history
bind '^[[B'=down-history #down
bind '^[OB'=down-history
bind '^[e'=end-of-history
bind '^[[1;5B'=end-of-history #ctl-down
bind '^[[1;5n'=up-history #ctl-. in mintty
bind '^[[A'=up-history #up
bind '^[OA'=up-history
bind '^[.'=beginning-of-history
bind '^[[1;5A'=beginning-of-history #ctl-up

## deletions
bind '^D'=eot-or-delete
bind '^[[P'=delete-char-forward #PC-style delete
bind '^[[3~'=delete-char-forward #vt220 delete
bind '^[d'=delete-word-forward
bind '^[[M'=delete-word-forward #PC-style ctl-delete
bind '^[[3;5~'=delete-word-forward #vt220 ctl-delete
bind '^?'=delete-char-backward
bind '^H'=delete-word-backward #ctl-bs

## copy/paste
bind '^G'=kill-region
bind '^R'=yank
bind '^[r'=yank-pop
bind '^K'=kill-to-eol

## searching
bind '^F'=search-history
bind '^G'=abort

## text
bind '^[c'=upcase-word
bind '^[l'=downcase-word
bind '^L'=downcase-word
bind '^T'=transpose-chars
bind '^[#'=comment
