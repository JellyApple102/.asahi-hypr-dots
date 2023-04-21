#!/bin/sh
# get screen brightness from brightnessctl
while true
do
    percentage=`brightnessctl info | grep -o -E '\((.+%)\)'`
    percentage=${percentage:1:-2}

    json='{"percentage":'"$percentage"', "tooltip":"Screen Brightness: '"$percentage"'%"}'
    echo $json

    sleep 0.2
done
