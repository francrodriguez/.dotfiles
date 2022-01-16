#!/bin/sh

#!/bin/bash

IFACE=$(/usr/bin/ifconfig | grep wlp2s0 | awk '{print $1}' | tr -d ':')

if [ "$IFACE" == "wlp2s0" ]; then
	echo "%{F#1bbf3e}直 %{F#e2ee6a}$(/usr/bin/ifconfig wlp2s0| grep "inet " | awk '{print $2}')%{u-}" 

else
	echo "%{F#2495e7}睊 not connected %{u-}%{F-}"

fi

