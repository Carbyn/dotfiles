#!/bin/bash

case "$SENDER" in
"focus_enabled")
    sketchybar --set $NAME drawing=on
    ;;
"focus_disabled")
    sketchybar --set $NAME drawing=off
    ;;
esac
