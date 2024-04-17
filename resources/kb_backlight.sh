#!/bin/bash

# Run your command and capture its output
result=$(brightnessctl --device='tpacpi::kbd_backlight' get)

# Check if the result is equal to the desired number
if [ "$result" -eq "1" ]; then
    brightnessctl --device='tpacpi::kbd_backlight' set 0
else
    brightnessctl --device='tpacpi::kbd_backlight' set 1
fi
