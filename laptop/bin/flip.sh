#!/bin/bash
# This script rotates the screen and touchscreen input 180 degrees, disables the touchpad, and enables the virtual keyboard And rotates screen back if the touchpad was disabled
isEnabled=$(xinput --list-props 'SynPS/2 Synaptics TouchPad' | awk '/Device Enabled/{print $NF}') if [ $isEnabled == 1 ] then
    echo "Screen is turned upside down"
    xrandr -o inverted
    xinput set-prop 'ELAN Touchscreen' 'Coordinate Transformation Matrix' -1 0 1 0 -1 1 0 0 1
    xinput disable 'SynPS/2 Synaptics TouchPad'
    # Remove hashtag below if you want pop-up the virtual keyboard onboard &
else
    echo "Screen is turned back to normal"
    xrandr -o normal
    xinput set-prop 'ELAN Touchscreen' 'Coordinate Transformation Matrix' 1 0 0 0 1 0 0 0 1
    xinput enable 'SynPS/2 Synaptics TouchPad'
    # killall onboard
fi
