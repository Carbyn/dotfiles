#!/bin/bash

center_window=(
    icon=􀥝
    click_script="hs -c 'hs.window.frontmostWindow():centerOnScreen()' >/dev/null 2>&1"
)

sketchybar --add item center_window right \
    --set center_window "${center_window[@]}"
