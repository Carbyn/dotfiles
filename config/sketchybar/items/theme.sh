#!/bin/bash

theme=(
    icon=􀀂
)

sketchybar --add item theme right \
    --set theme "${theme[@]}" \
    click_script="$PLUGIN_DIR/theme.sh click"
