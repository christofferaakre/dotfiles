#!/usr/bin/env bash

xrandr --output HDMI-1-0 --auto --output eDP-1 --auto --left-of HDMI-1-0
xmodmap ~/.Xmodmap

setxkbmap gb
setxkbmap -option caps:escape

CM_OWN_CLIPBOARD=1 clipmenud &

ibus-daemon -rxR
