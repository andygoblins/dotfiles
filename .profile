export LC_CTYPE=en_US.UTF-8

if [ `uname` != Linux ]
then
	EDITOR=/usr/local/bin/nano
	export QT_QPA_PLATFORM=wayland-egl
	export CLUTTER_BACKEND=wayland
	export SDL_VIDEODRIVER=wayland
else
	EDITOR=/usr/bin/nano
fi
VISUAL=$EDITOR
SUDO_EDIT=$EDITOR
export VISUAL EDITOR SUDO_EDIT

export GNUPGHOME=~/.config/gnupg
export ZDOTDIR=~/.config/zsh
export NETHACKOPTIONS=@~/.config/nethack/.nethackrc
export LESSHISTFILE=/dev/null
export MC_XDG_OPEN=~/bin/nohup-open
export ENV=~/.kshrc

export GOPATH=~/hack
export PATH=$PATH:~/bin

LS_COLORS="di=01;34:fi=0:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01"
LS_COLORS="$LS_COLORS:*.tar=33:*.tgz=33:*.tbz=33:*.tbz2=33:*.tb2=33:*.tlz=33:*.txz=33:*.gz=33:*.bz2=33:*.xz=33:*.lz=33:*.lzma=33:*.7z=33"
export LS_COLORS
