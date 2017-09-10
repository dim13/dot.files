# $OpenBSD: dot.profile,v 1.4 2005/02/16 06:56:57 matthieu Exp $
#
# sh/ksh initialization

. /etc/ksh.kshrc

LC_CTYPE="en_US.UTF-8"
GOPATH=$HOME/go
PS1='\h:\W \u\$ '
export LC_CTYPE GOPATH PS1

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:$GOPATH/bin:.
export PATH HOME TERM

if [ -x /usr/local/bin/lesspipe ]; then
	export LESSOPEN="| /usr/local/bin/lesspipe %s"
fi

stty kerninfo status 
