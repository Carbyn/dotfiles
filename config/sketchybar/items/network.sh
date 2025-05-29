#!/bin/bash

wifi=(
    update_freq=5
    script="$PLUGIN_DIR/wifi.sh"
)
vpn=(
    update_freq=5
    script="$PLUGIN_DIR/vpn.sh"
)

sketchybar --add item wifi right \
    --set wifi "${wifi[@]}" \
    --subscribe wifi wifi_change \
    \
    --add item vpn right \
    --set vpn "${vpn[@]}" \
    click_script="$PLUGIN_DIR/vpn.sh click"
