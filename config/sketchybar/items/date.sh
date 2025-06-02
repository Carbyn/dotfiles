#!/bin/bash

date=(
    icon.drawing=off
    update_freq=60
    script="$PLUGIN_DIR/date.sh"
)

sketchybar --add item date center \
    --set date "${date[@]}" \
    --subscribe date mouse.clicked
