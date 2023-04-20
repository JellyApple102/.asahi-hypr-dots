#!/bin/sh
# get keyboard backlight from brightnessctl
while true
do
    percentage=`brightnessctl -d kbd_backlight info | grep -o -E '\((.+%)\)'`
    percentage=${percentage:1:-2}
    echo $percentage
    sleep 0.2
done
