#!/bin/bash

SOURCE=$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleCurrentKeyboardLayoutInputSourceID)

case "$SOURCE" in
'com.apple.keylayout.US')
    LABEL=🇺🇸
    ;;
'com.apple.keylayout.PinyinKeyboard')
    LABEL=🇨🇳
    ;;
*)
    echo "InputSource: $SOURCE not recognized. Add it in plugins/input.sh first."
    LABEL="Unknown"
    ;;
esac

sketchybar --set $NAME label=$LABEL
