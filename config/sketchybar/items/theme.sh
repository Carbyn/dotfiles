#!/bin/bash

theme=(
    icon=􀀂
    script="$PLUGIN_DIR/theme.sh"
)

sketchybar --add item theme right \
    --set theme "${theme[@]}" \
    --subscribe theme mouse.clicked
