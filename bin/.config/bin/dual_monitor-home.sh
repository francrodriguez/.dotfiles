#!/bin/bash

# set up the two monitors for bspwm
# NOTE This is a simplistic approach because I already know the settings I
# want to apply.
my_laptop_external_monitor=$(xrandr --query | grep  -w 'DP-1' | awk {'print $2'})
if [[ $my_laptop_external_monitor = connected ]]; then
#	xrandr --output eDP-1 --primary --mode 1920x1080 --rotate normal --output DP-1 --mode 1920x1200 --rotate normal --right-of eDP-1; bspc monitor DP-1 -d 1 2 3 4 5 6 7; bspc monitor eDP-1 -d 8
#	xrandr --output eDP-1 --off --output DP-1 --primary --mode 1920x1200 --rotate normal;bspc monitor eDP-1 -d 1 2 3 4 5 6 7 8
# 4K	xrandr --output eDP-1 --off --output DP-1 --primary --mode 3840x2160 --rotate normal;bspc monitor DP-1 -d 1 2 3 4 5 6 7 8
	xrandr --output eDP-1 --off --output DP-1 --primary --mode 2560x1440 --rotate normal;bspc monitor DP-1 -d 1 2 3 4 5 6 7 8
elif [[ $my_laptop_external_monitor != connected ]]; then
	bspc monitor eDP-1 -d 1 2 3 4 5 6 7 8
fi
