#!/bin/bash

source "$CONFIG_DIR/colors.sh"

DARK_WALLPAPER=$(realpath ~/Pictures/bg/dark.jpg)
LIGHT_WALLPAPER=$(realpath ~/Pictures/bg/light.jpg)

AUTO_TOGGLE_THEME=on
TOGGLE_THEME_TIME="15:00"

toggle_theme() {
    if is_dark_mode; then
        NEW_THEME="light"
        NEW_WALLPAPER=$LIGHT_WALLPAPER
    else
        NEW_THEME="dark"
        NEW_WALLPAPER=$DARK_WALLPAPER
    fi

    sed -i '' "s/^THEME=\"$THEME\"/THEME=\"$NEW_THEME\"/" $CONFIG_DIR/colors.sh

    if [[ -f "$NEW_WALLPAPER" ]]; then
        osascript -e "tell application \"Finder\" to set desktop picture to POSIX file \"$NEW_WALLPAPER\""
    else
        echo "Error: NEW_WALLPAPER not found, set wallpapers path in plugins/theme.sh first."
    fi
}

if [[ "$AUTO_TOGGLE_THEME" == "on" ]]; then
    current_time=$(date +%H:%M)
    if is_dark_mode; then
        if [[ "$current_time" < "$TOGGLE_THEME_TIME" ]]; then
            toggle_theme
        fi
    else
        if [[ "$current_time" > "$TOGGLE_THEME_TIME" ]]; then
            toggle_theme
        fi
    fi
fi

case "$SENDER" in
"mouse.clicked")
    if [[ "$AUTO_TOGGLE_THEME" == "on" ]]; then
        osascript -e 'display notification "Auto toggle theme enabled" with title "Toggle Theme"'
    else
        toggle_theme
    fi
    ;;
esac
