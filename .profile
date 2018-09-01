LC_CTYPE=en_US.UTF-8
if [ `uname` != Linux ]
then
	EDITOR=/usr/local/bin/nano
else
	EDITOR=/usr/bin/nano
fi
VISUAL=$EDITOR

GOPATH=~/hack
PATH=$PATH:~/bin
LESSHISTFILE=/dev/null
# basic ls colors
LS_COLORS="di=01;34:fi=0:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01"
# archive ls colors
LS_COLORS="$LS_COLORS:*.tar=33:*.tgz=33:*.tbz=33:*.tbz2=33:*.tb2=33:*.tlz=33:*.txz=33:*.gz=33:*.bz2=33:*.xz=33:*.lz=33:*.lzma=33:*.7z=33"
ENV=~/.kshrc

export EDITOR VISUAL GOPATH PATH LESSHISTFILE LS_COLORS ENV
