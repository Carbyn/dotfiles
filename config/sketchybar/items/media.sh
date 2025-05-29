#!/bin/bash

media=(
    icon=
    icon.color=$SKY
    script="$PLUGIN_DIR/media.sh"
    label.max_chars=35
    scroll_texts=on
    updates=on
    update_freq=3
    drawing=off
    label.scroll_duration=200
)

sketchybar --add item media left \
    --set media "${media[@]}"
