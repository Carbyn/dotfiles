#!/bin/bash

time=(
    icon.drawing=off
    width=100
    align=left
    padding_left=0
    padding_right=0
    label.padding_left=0
    update_freq=1
    script='sketchybar --set $NAME label="$(date "+%H:%M")"'
)

sketchybar --add item time center \
    --set time "${time[@]}"
