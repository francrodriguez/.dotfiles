#!/bin/bash

IFACE=$(/usr/bin/ifconfig | grep tun0 | awk '{print $1}' | tr -d ':')

if [ "$IFACE" == "tun0" ]; then
	echo "%{F#1bbf3e} %{F#e2ee6a}$(/usr/bin/ifconfig tun0| grep "inet " | awk '{print $2}')%{u-}"

else
	echo "%{F#ff3300} VPN down! %{u-}%{F-}"

fi

