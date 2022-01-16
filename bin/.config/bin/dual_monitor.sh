#!/bin/bash

# set up the two monitors for bspwm
# NOTE This is a simplistic approach because I already know the settings I
# want to apply.
my_laptop_home=$(xrandr --query | grep 'DP-1-2')
my_laptop_work=$(xrandr --query | grep 'DP-2-2')
if [[ $my_laptop_work = *connected* ]]; then
	    xrandr --output eDP-1 --off --output DP-2-2 --primary --mode 3840x1600 --rotate normal; bspc monitor DP-2-2 -d 1 2 3 4 5 6 7 8
elif [[ $my_laptop_home = *connected* ]]; then
	xrandr --output eDP-1 --off --output DP-1-2 --primary --mode 1920x1080 --rotate normal;bspc monitor DP-1-2 -d 1 2 3 4 5 6 7 8
	#xrandr --output eDP-1 --off --output DP-1-2 --primary --mode 2560x1440 --rotate normal;bspc monitor DP-1-2 -d 1 2 3 4 5 6 7 8
#elif [[ $my_laptop_home && $my_laptop_work = disconnected ]]; then
elif [[ DP-1 && DP-2 != connected ]]; then
        bspc monitor eDP-1 -d 1 2 3 4 5 6 7 8
fi

