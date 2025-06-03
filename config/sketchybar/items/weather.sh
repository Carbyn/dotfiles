#!/bin/bash

weather=(
    padding_left=8
    update_freq=600
    script="$PLUGIN_DIR/weather.sh"
)

sketchybar --add item weather center \
    --set weather "${weather[@]}" \
    --subscribe weather mouse.clicked
