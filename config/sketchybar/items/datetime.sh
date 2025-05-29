#!/bin/bash

date=(
    update_freq=60
    script='sketchybar --set $NAME label="$(date +"%a %d %b")"'
)
time=(
    label.align=left
    update_freq=1
    script='sketchybar --set $NAME label="$(date "+%H:%M")"'
)

sketchybar \
    --add item time center \
    --set time "${time[@]}" \
    --add item date center \
    --set date "${date[@]}"
