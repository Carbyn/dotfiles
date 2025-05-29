#!/bin/bash

down=(
    icon=⇣
    icon.color=$RED
    icon.padding_right=5
    script="$PLUGIN_DIR/network_rates.sh"
    update_freq=3
)
sketchybar \
    --add item net_down left \
    --set net_down "${down[@]}"
