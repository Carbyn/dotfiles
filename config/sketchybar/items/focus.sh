#!/bin/bash

focus=(
    icon=􀆺
    update_freq=5
    updates=on
    drawing=off
    script="$PLUGIN_DIR/focus.sh"
)

sketchybar --add item focus right \
    --set focus "${focus[@]}"
