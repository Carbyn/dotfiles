#!/bin/bash

sketchybar --set $NAME label="$(date +"%b %-d %a")"

case "$SENDER" in
"mouse.clicked")
    open -a Calendar
    ;;
esac
