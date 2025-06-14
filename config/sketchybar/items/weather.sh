#!/bin/bash

weather=(
    width=100
    align=right
    padding_left=0
    padding_right=0
    label.padding_right=0
    label="--°"
    update_freq=600
    script="$PLUGIN_DIR/weather_nmc.sh"
    # script="$PLUGIN_DIR/weather_meteo.sh"
)

sketchybar --add item weather center \
    --set weather "${weather[@]}" \
    --subscribe weather mouse.clicked
