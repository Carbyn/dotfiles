#!/bin/bash

SOURCE=$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleCurrentKeyboardLayoutInputSourceID)

case $SOURCE in
'com.apple.keylayout.US')
    LABEL=🇺🇸
    ;;
'com.apple.keylayout.PinyinKeyboard')
    LABEL=🇨🇳
    ;;
esac

sketchybar --set $NAME label=$LABEL
