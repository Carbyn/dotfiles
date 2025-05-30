#!/bin/bash

VPN_NAME="Shadowrocket"
VPN_STATUS=$(scutil --nwi | grep -E '^   utun[0-9]')

case "$SENDER" in
"mouse.clicked")
    if [ -n "$VPN_STATUS" ]; then
        networksetup -disconnectpppoeservice "$VPN_NAME"
    else
        networksetup -connectpppoeservice "$VPN_NAME"
    fi
    sleep 1
    VPN_STATUS=$(scutil --nwi | grep -E '^   utun[0-9]')
    ;;
esac

ICON=􀞞
HIGHLIGHT=on
if [ -n "$VPN_STATUS" ]; then
    ICON=􁃘
    HIGHLIGHT=off
fi

sketchybar --set $NAME icon="$ICON" icon.highlight="$HIGHLIGHT"
