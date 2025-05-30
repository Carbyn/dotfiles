#!/bin/bash

if is_dark_mode; then
    ICON_COLOR=$SKY
else
    ICON_COLOR=$BLACK
fi

media=(
    icon=
    icon.color=$ICON_COLOR
    label.max_chars=30
    label.scroll_duration=200
    scroll_texts=on
    updates=on
    drawing=off
    update_freq=5
    script="$PLUGIN_DIR/media.sh"
)

sketchybar --add item media left \
    --set media "${media[@]}"
