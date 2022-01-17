#!/bin/bash

IFACE=$(/usr/bin/ifconfig | grep eno1 | awk '{print $1}' | tr -d ':')

if [ "$IFACE" == "eno1" ]; then
	echo "%{F#1bbf3e} %{F#e2ee6a}$(/usr/bin/ifconfig eno1 | grep "inet " | awk '{print $2}')%{u-}"

else
	echo "%{F#2495e7} not connected %{u-}%{F-}"

fi

