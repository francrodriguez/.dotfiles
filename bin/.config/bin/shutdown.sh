#!/bin/bash

notify-send -u critical 'Computer is shutting down now!'

sleep "${1:-3}"

systemctl poweroff
