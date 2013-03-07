#!/bin/sh

if [ -d /etc/X11/xinit/initrc.d ]
then
  for f in /etc/X11/xinit/xinitrc.d/*
  do
    [ - x "$f" ] && . "$f"
  done
  unset f
fi

setxkbmap -option caps:escape
xmodmap ~/.Xmodmap
exec openbox-session
