#!/bin/bash

time=(
    icon.drawing=off
    padding_left=20
    padding_right=20
    update_freq=1
    script='sketchybar --set $NAME label="$(date "+%H:%M")"'
)

sketchybar --add item time center \
    --set time "${time[@]}"
