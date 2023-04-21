#!/bin/sh
# get keyboard backlight from brightnessctl
while true
do
    percentage=`brightnessctl -d kbd_backlight info | grep -o -E '\((.+%)\)'`
    percentage=${percentage:1:-2}

    json='{"percentage":'"$percentage"', "tooltip":"Keyboard Backlight: '"$percentage"'%"}'
    echo $json

    sleep 0.2
done
