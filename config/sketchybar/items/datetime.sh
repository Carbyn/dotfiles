#!/bin/bash

date=(
    update_freq=60
    script='sketchybar --set $NAME label="$(date +"%a %d %b")"'
)
time=(
    update_freq=1
    padding_left=-8
    script='sketchybar --set $NAME label="$(date "+%T")"'
)

sketchybar \
    --add item time center \
    --set time "${time[@]}" \
    --add item date right \
    --set date "${date[@]}"
