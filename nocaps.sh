#!/bin/bash
# This turns Caps Lock into an extra Ctrl key for most keyboard layouts on Linux
setxkbmap -layout "$(setxkbmap -print | awk -F + '/xkb_symbols/ {print $2}')" -option ctrl:nocaps
