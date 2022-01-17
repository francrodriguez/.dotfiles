#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

polybar DisplayPort-0 &
polybar HDMI-A-0 &
