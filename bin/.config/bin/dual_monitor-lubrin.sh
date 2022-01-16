#!/bin/bash

# set up the two monitors for bspwm
# NOTE This is a simplistic approach because I already know the settings I
# want to apply.
my_laptop_home=$(xrandr --query | grep 'DP-1')
my_laptop_work=$(xrandr --query | grep 'DP-2-1')
if [[ $my_laptop_work = *connected* ]]; then
	    #xrandr --output DP-2-1 --mode 1920x1080 --above eDP-1 --rotate normal --output eDP-1 --primary --mode 1920x1080 --rotate normal; bspc monitor DP-2-1 -d 2 3 4 5 6 7 8; bspc monitor eDP-1 -d 1
	    xrandr --output DP-2-1 --mode 1920x1080 --pos 1920x0 --rotate normal --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal; bspc monitor DP-2-1 -d 2 3 4 5 6 7 8; bspc monitor eDP-1 -d 1
elif [[ $my_laptop_home = *connected* ]]; then
	xrandr --output eDP-1 --off --output DP-1 --primary --mode 2560x1440 --rotate normal;bspc monitor eDP-1 -d 1 2 3 4 5 6 7 8
elif [[ $my_laptop_home && $my_laptop_work != connected ]]; then
        bspc monitor eDP-1 -d 1 2 3 4 5 6 7 8
fi

