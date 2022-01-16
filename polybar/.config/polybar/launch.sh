#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

polybar eDP-1 &
polybar DP-1 &
#polybar DP-2-1 &
polybar DP-2-2 &
polybar DP-1-2 &
