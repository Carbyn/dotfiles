#!/bin/bash

source "$CONFIG_DIR/settings.sh"

case "$SENDER" in
"mouse.clicked")
    open -a Weather
    exit 0
    ;;
esac

# https://open-meteo.com/en/docs/cma-api
url="https://api.open-meteo.com/v1/forecast?latitude=${WEATHER_METEO_LATITUDE}&longitude=${WEATHER_METEO_LONGITUDE}&hourly=temperature_2m,weather_code&timezone=auto&forecast_days=1&models=cma_grapes_global"

weather_info=$(curl -sf --max-time 10 --retry 3 "$url")
curl_status=$?

hour=$(date "+%H")
if [[ $curl_status -eq 0 ]] && [[ -n "$weather_info" ]]; then
    temp_C=$(echo "$weather_info" | jq -r ".hourly.temperature_2m[$hour]")
    weather_code=$(echo "$weather_info" | jq -r ".hourly.weather_code[$hour]")
else
    echo "Error: weather curl failed. Curl status: $curl_status, weather_info: $weather_info"
    exit 1
fi

if [[ -z "$temp_C" || "$temp_C" == "null" ]] || [[ -z "$weather_code" || "$weather_code" == "null" ]]; then
    echo "Error: parse weather_info failed. temp_C: $temp_C, weather_code: $weather_code"
    exit 1
fi

# https://open-meteo.com/en/docs
case $weather_code in
0)
    ICON=􀆮
    ;;
1 | 2)
    ICON=􀇕
    ;;
3)
    ICON=􀇃
    ;;
45 | 48)
    ICON=􀇋
    ;;
51 | 53 | 55 | 56 | 57)
    ICON=􀇗
    ;;
61 | 63 | 65 | 66 | 67)
    ICON=􀇉
    ;;
71 | 73 | 75)
    ICON=􀇏
    ;;
77)
    ICON=􀇥
    ;;
80 | 81 | 82)
    ICON=􀇉
    ;;
85 | 86)
    ICON=􀇏
    ;;
95 | 96 | 99)
    ICON=􀇟
    ;;
*)
    ICON=􀆿
    echo "Unknown weather code: $weather_code"
    ;;
esac

temp_C=$(awk "BEGIN {printf(\"%.0f\", $temp_C)}")
LABEL="${temp_C}°C"

sketchybar --set $NAME icon="$ICON" label="$LABEL"
