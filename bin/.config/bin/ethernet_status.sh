#!/bin/bash

IFACE=$(/usr/bin/ifconfig | grep enp63s0u1u2 | awk '{print $1}' | tr -d ':')

if [ "$IFACE" == "enp63s0u1u2" ]; then
	echo "%{F#1bbf3e} %{F#e2ee6a}$(/usr/bin/ifconfig enp63s0u1u2 | grep "inet " | awk '{print $2}')%{u-}"

else
	echo "%{F#2495e7} not connected %{u-}%{F-}"

fi

