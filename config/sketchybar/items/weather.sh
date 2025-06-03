#!/bin/bash

weather=(
    width=100
    align=left
    padding_left=0
    icon.padding_left=0
    update_freq=600
    script="$PLUGIN_DIR/weather.sh"
)

sketchybar --add item weather center \
    --set weather "${weather[@]}" \
    --subscribe weather mouse.clicked
