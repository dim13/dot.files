#!/bin/sh

export LC_CTYPE="en_US.UTF-8"
export XUSERFILESEARCHPATH=$HOME/%N:$HOME/app-defaults/%N

setxkbmap -layout "us,ru" -option "grp:alt_space_toggle,grp_led:caps,caps:escape,compose:102"

xsetroot -solid DarkSlateGrey

xstatbar -T &
exec cwm
