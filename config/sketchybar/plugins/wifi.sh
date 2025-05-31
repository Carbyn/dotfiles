#!/bin/bash

IP="$(ipconfig getsummary en1 | grep -o "yiaddr = .*" | sed 's/^yiaddr = //')"

ICON=􀙈
HIGHLIGHT=on
if [[ -n "$IP" ]]; then
    ICON=􀙇
    HIGHLIGHT=off
fi

sketchybar --set $NAME icon=$ICON icon.highlight=$HIGHLIGHT
