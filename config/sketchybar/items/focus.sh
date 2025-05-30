#!/bin/bash

focus=(
    icon=􀆺
    updates=on
    drawing=off
    update_freq=5
    script="$PLUGIN_DIR/focus.sh"
)

sketchybar --add item focus right \
    --set focus "${focus[@]}"
