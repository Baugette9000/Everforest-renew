#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# if on bsp
bspc config bottom_padding 0
bspc config top_padding 0

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log
echo "Bars launched..."

polybar bar1 --config=~/.config/i3/polybar/config.ini &
if [[ $(xrandr -q | grep 'DP-0 connected') ]]; then
    polybar bar2 --config=~/.config/i3/polybar/config.ini &
fi
