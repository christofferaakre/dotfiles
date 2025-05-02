#!/usr/bin/env bash
xrandr --output HDMI-0 --auto --output DP-0 --auto --left-of HDMI-0

xmodmap ~/.Xmodmap

setxkbmap gb
setxkbmap -option caps:escape

CM_OWN_CLIPBOARD=1 clipmenud &

ibus-daemon -rxR

xinput --set-prop "pointer:Razer Razer DeathAdder V2" "libinput Accel Speed" -0.8
