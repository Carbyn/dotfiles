#!/bin/bash

time=(
    icon.drawing=off
    padding_left=10
    update_freq=1
    script='sketchybar --set $NAME label="$(date "+%H:%M")"'
)

sketchybar --add item time center \
    --set time "${time[@]}"
