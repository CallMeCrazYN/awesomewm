#!/bin/sh
#!/usr/bin/env bash
#!/usr/bin/python
#!/bin/env bash

# Launch Apps when AwesomeWM starts.

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

# List the apps you wish to run on startup below preceded with "run"

# Policy kit (needed for GUI apps to ask for password)
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
# xrandr layout for AwesomeWM
run ~/.scripts/awesome/awe#!/usr/bin/env bash

# sxhkd Hotkeys
#run sxhkd &
# Start compositor
picom &
# Nitrogen wallpaper
# run nitrogen --restore &
# pywal
#wal -R &
# Start Network Manager Applet
run nm-applet &
# Set Numlock key to active.
run numlockx &
# Greenclip for Rofi
run greenclip daemon &
# Unclutter - (hides mouse pointer after 5 seconds of inactivity)
run unclutter &
# Start Volume Control applet
run volctl &
# MPD
run mpd ~/.config/mpd/mpd.conf &

# set keyboard layout
setxkbmap de koy

# powermanager for brighness control for now
run xfce4-power-manager

