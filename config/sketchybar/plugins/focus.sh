#!/bin/bash

STATE=$(defaults read com.apple.controlcenter "NSStatusItem Visible FocusModes" 2>/dev/null)

if [[ "$STATE" == "1" ]]; then
    sketchybar --set $NAME drawing=on
else
    sketchybar --set $NAME drawing=off
fi
