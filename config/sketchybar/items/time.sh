#!/bin/bash

time=(
    update_freq=1
    padding_left=-8
    script='sketchybar --set $NAME label="$(date "+%H:%M")"'
)

sketchybar \
    --add item time center \
    --set time "${time[@]}"
