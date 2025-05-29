#!/bin/bash

media=(
    icon=
    icon.color=$SKY
    label.max_chars=35
    label.scroll_duration=200
    scroll_texts=on
    updates=on
    drawing=off
    update_freq=3
    script="$PLUGIN_DIR/media.sh"
)

sketchybar --add item media left \
    --set media "${media[@]}"
