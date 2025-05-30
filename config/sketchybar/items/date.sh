#!/bin/bash

date=(
    update_freq=60
    script='sketchybar --set $NAME label="$(date +"%a %d %b")"'
)

sketchybar --add item date right \
    --set date "${date[@]}" \
    click_script="open -a Calendar"
