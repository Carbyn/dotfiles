#!/bin/bash

date=(
    icon.drawing=off
    width=100
    align=right
    padding_left=0
    padding_right=0
    label.padding_right=0
    update_freq=60
    script="$PLUGIN_DIR/date.sh"
)

sketchybar --add item date center \
    --set date "${date[@]}" \
    --subscribe date mouse.clicked
