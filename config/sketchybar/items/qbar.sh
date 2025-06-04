#!/bin/bash

qbar=(
    icon=􀴛
    update_freq=3
    script="$PLUGIN_DIR/qbar.sh"
)

qbar_body=(
    icon.drawing=off
)

sketchybar \
    --add item qbar_body right \
    --set qbar_body "${qbar_body[@]}" \
    \
    --add item qbar right \
    --set qbar "${qbar[@]}" \
    --subscribe qbar mouse.clicked mouse.exited.global
