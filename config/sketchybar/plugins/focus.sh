#!/bin/bash

# need full disk access
FILE="$HOME/Library/DoNotDisturb/DB/Assertions.json"

if [[ ! -r "$FILE" ]]; then
    exit 0
fi

STATE=$(/usr/bin/jq -r '
    [.data[]?.storeAssertionRecords[]?] | length
' "$FILE" 2>/dev/null)

case "$STATE" in
'' | *[!0-9]*)
    # Invalid JSON or unexpected data: preserve current state.
    exit 0
    ;;
0)
    sketchybar --set "$NAME" drawing=off
    ;;
*)
    sketchybar --set "$NAME" drawing=on
    ;;
esac
