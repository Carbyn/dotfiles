#!/bin/bash

IS_CLICK=$1

IS_MUTED=$(osascript -e "output muted of (get volume settings)")

if [ "$IS_CLICK" = "click" ]; then
    if [ "$IS_MUTED" = "true" ]; then
        osascript -e "set volume output muted false"
        osascript -e "set volume output volume 30"
    else
        osascript -e "set volume output muted true"
    fi
    sleep 0.2
    IS_MUTED=$(osascript -e "output muted of (get volume settings)")
fi

if [ "$SENDER" = "volume_change" ]; then
    HIGHLIGHT=off

    case $INFO in
    [6-9][0-9] | 100)
        ICON=􀊩
        ;;
    [3-5][0-9])
        ICON=􀊧
        ;;
    [1-9] | [1-2][0-9])
        ICON=􀊥
        ;;
    *)
        ICON=􀊣
        HIGHLIGHT=on
        ;;
    esac

    sketchybar --set $NAME icon=$ICON icon.highlight=$HIGHLIGHT
fi
