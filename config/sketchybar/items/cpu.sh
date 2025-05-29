#!/bin/bash

cpu=(
    icon=
    icon.color=$GREEN
    update_freq=5
    script="$PLUGIN_DIR/cpu.sh"
)

sketchybar --add item cpu left \
    --set cpu "${cpu[@]}"
