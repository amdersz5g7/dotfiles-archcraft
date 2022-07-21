#!/usr/bin/env bash

# reference: https://askubuntu.com/questions/69556/how-do-i-check-the-batterys-status-via-the-terminal

# upower -i `upower -e | grep '/org/freedesktop/UPower/devices/headset_dev_18_95_52_B1_B9_95'` | grep -E "percentage"
upower -i `upower -e | grep '/org/freedesktop/UPower/devices/headset_dev_18_95_52_B1_B9_95'` | grep -E percentage|xargs|cut -d' ' -f2|sed s/%//
