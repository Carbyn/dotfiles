#!/bin/bash

INTERFACE="en1"

read initial_rx initial_tx < <(netstat -ibn | awk -v iface="$INTERFACE" '$1 == iface && $7 ~ /^[0-9]+$/ && $10 ~ /^[0-9]+$/ {print $7, $10; exit}')
sleep 1
read final_rx final_tx < <(netstat -ibn | awk -v iface="$INTERFACE" '$1 == iface && $7 ~ /^[0-9]+$/ && $10 ~ /^[0-9]+$/ {print $7, $10; exit}')

if [[ -z "$initial_rx" || -z "$final_rx" ]]; then
    echo "Error: No data collected"
    exit 1
fi

DOWN=$((final_rx - initial_rx)) # Bytes per second

human_readable() {
    local bytes=$1
    if [ "$bytes" -ge 1073741824 ]; then
        printf "%.1f GB/s\n" "$(bc -l <<<"$bytes/1073741824")"
    elif [ "$bytes" -ge 1048576 ]; then
        printf "%.1f MB/s\n" "$(bc -l <<<"$bytes/1048576")"
    elif [ "$bytes" -ge 1024 ]; then
        printf "%d KB/s\n" "$(bc <<<"$bytes/1024")"
    else
        echo "$bytes B/s"
    fi
}

sketchybar --set net_down label="$(human_readable $DOWN)"
