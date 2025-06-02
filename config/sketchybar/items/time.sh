#!/bin/bash

time=(
    update_freq=1
    icon.drawing=off
    script='sketchybar --set $NAME label="$(date "+%H:%M")"'
)

sketchybar --add item time center \
    --set time "${time[@]}"
