#!/bin/bash

sleep=(
    icon=􀷄
    click_script="$PLUGIN_DIR/sleep.sh"
)

sketchybar --add item sleep right \
    --set sleep "${sleep[@]}"
