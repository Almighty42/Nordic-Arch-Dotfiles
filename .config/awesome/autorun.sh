#!/bin/sh

# Add this script to your wm startup file.

# /home/Almighty42/.config/polybar/forest/launch.sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

