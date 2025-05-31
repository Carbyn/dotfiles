#!/bin/bash

if [[ "$SENDER" = "focus_enabled" ]]; then
    sketchybar --set $NAME drawing=on
else
    sketchybar --set $NAME drawing=off
fi
