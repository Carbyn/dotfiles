#!/bin/bash

INPUT_SOURCES=$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleSelectedInputSources 2>/dev/null)

ICON="❓"

if echo "$INPUT_SOURCES" | grep -Eq \
    "com.tencent.inputmethod.wetype|com.apple.inputmethod.SCIM"; then
    ICON="🇨🇳"
elif echo "$INPUT_SOURCES" | grep -q '"KeyboardLayout Name" = "U.S."'; then
    ICON="🇺🇸"
fi

sketchybar --set "$NAME" icon="$ICON"
