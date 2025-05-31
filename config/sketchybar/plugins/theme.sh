#!/bin/bash

case "$SENDER" in
"mouse.clicked")
    DARK_WALLPAPER=$(realpath ~/Pictures/bg/dark.jpg)
    LIGHT_WALLPAPER=$(realpath ~/Pictures/bg/light.jpg)

    source $CONFIG_DIR/colors.sh

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
    ;;
esac
