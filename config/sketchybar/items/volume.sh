#!/bin/bash

volume=(
    script="$PLUGIN_DIR/volume.sh"
)

sketchybar --add item volume right \
    --set volume "${volume[@]}" \
    click_script="$PLUGIN_DIR/volume.sh click" \
    --subscribe volume volume_change
