#!/bin/bash

date=(
    update_freq=60
    script="$PLUGIN_DIR/date.sh"
)

sketchybar --add item date right \
    --set date "${date[@]}" \
    --subscribe date mouse.clicked
