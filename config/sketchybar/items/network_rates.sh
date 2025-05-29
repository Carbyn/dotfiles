#!/bin/bash

down=(
    icon=⇣
    label.font.size=13
    icon.font.size=13
    icon.color=$RED
    icon.padding_right=5
    script="$PLUGIN_DIR/network_rates.sh"
    update_freq=3
)
sketchybar \
    --add item net_down left \
    --set net_down "${down[@]}"
