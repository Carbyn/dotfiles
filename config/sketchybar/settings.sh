#!/bin/bash

source "$CONFIG_DIR/colors.sh" # Loads all defined colors

FONT="JetBrainsMono Nerd Font" # Nerd font is preferred
PADDINGS=4                     # All paddings use this value (icon, label, background)

THEME="light" # light|dark
AUTO_SWITCH_THEME=on
LIGHT_START_TIME="06:00"
LIGHT_END_TIME="15:00"

LIGHT_WALLPAPER=$(realpath ~/Pictures/bg/light.jpg)
DARK_WALLPAPER=$(realpath ~/Pictures/bg/dark.jpg)

WEATHER_LATITUDE=30.2416
WEATHER_LONGITUDE=120.1189

is_dark_mode() {
    if [[ "$THEME" == "dark" ]]; then
        return 0
    else
        return 1
    fi
}

# General bar colors
if is_dark_mode; then
    BAR_COLOR=$TRANSPARENT
    BAR_BORDER_COLOR=$TRANSPARENT
    ICON_COLOR=$WHITE
    LABEL_COLOR=$WHITE
    HIGHLIGHT_COLOR=$GREY
    POPUP_BACKGROUND_COLOR=$BG1
    POPUP_BORDER_COLOR=$WHITE
    BACKGROUND_COLOR=$BG0
    BACKGROUND_BORDER_COLOR=$BG2
else
    BAR_COLOR=$TRANSPARENT1
    BAR_BORDER_COLOR=$TRANSPARENT1
    ICON_COLOR=$BLACK
    LABEL_COLOR=$BLACK
    HIGHLIGHT_COLOR=$BLACK
    POPUP_BACKGROUND_COLOR=$TRANSPARENT1
    POPUP_BORDER_COLOR=$BLACK
    BACKGROUND_COLOR=$BG0
    BACKGROUND_BORDER_COLOR=$BG2
fi

bar=(
    position=top
    topmost=window
    sticky=off
    height=24
    color=$BAR_COLOR
    border_color=$BAR_BORDER_COLOR
    blur_radius=10
)

default=(
    updates=when_shown

    icon.font.family="$FONT"
    icon.font.style="Bold"
    icon.font.size=14.0
    icon.color=$ICON_COLOR
    icon.highlight_color=$HIGHLIGHT_COLOR
    icon.padding_left=$PADDINGS
    icon.padding_right=$PADDINGS

    label.font.family="$FONT"
    label.font.style="Semibold"
    label.font.size=13.0
    label.color=$LABEL_COLOR
    label.highlight_color=$HIGHLIGHT_COLOR

    padding_right=$PADDINGS
    padding_left=$PADDINGS

    popup.align=right
    popup.background.border_width=1
    popup.background.corner_radius=5
    popup.background.border_color=$POPUP_BORDER_COLOR
    popup.background.color=$POPUP_BACKGROUND_COLOR

    background.corner_radius=5
    background.height=24
    background.border_width=1
)

popup_events=(
    mouse.entered
    mouse.exited
    mouse.exited.global
)

popup() {
    sketchybar --set $NAME popup.drawing=$1
}
