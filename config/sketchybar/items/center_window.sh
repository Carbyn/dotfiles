#!/bin/bash

center_window=(
    icon=􀥝
    click_script="open \"hammerspoon://center_window\""
)

sketchybar --add item center_window right \
    --set center_window "${center_window[@]}"
