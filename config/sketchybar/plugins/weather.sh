#!/bin/bash

source "$CONFIG_DIR/settings.sh"

case "$SENDER" in
"mouse.clicked")
    open -a Weather
    exit 0
    ;;
esac

# https://github.com/chubin/wttr.in?tab=readme-ov-file#json-output
url="https://wttr.in/~${LOCATION}?format=j2"
weather_info=$(curl -sf --max-time 5 "$url")
curl_status=$?

if [[ $curl_status -eq 0 ]] && [[ -n "$weather_info" ]]; then
    temp_C=$(echo "$weather_info" | jq -r '.current_condition[0].temp_C')
    weather_code=$(echo "$weather_info" | jq -r '.current_condition[0].weatherCode')
else
    exit 1
fi

if [[ -z "$temp_C" ]] || [[ -z "$weather_code" ]]; then
    exit 1
fi

# https://github.com/chubin/wttr.in/blob/master/lib/constants.py
case "$weather_code" in
"Sunny" | 113)
    ICON=􀆮
    ;;
"PartlyCloudy" | 116)
    ICON=􀇕
    ;;
"Cloudy" | 119 | "VeryCloudy" | 122)
    ICON=􀇃
    ;;
"Fog" | 143 | 248 | 260)
    ICON=􀇋
    ;;
"LightRain" | 266 | 293 | 296 | "LightShowers" | 176 | 263 | 353)
    ICON=􀇗
    ;;
"HeavyRain" | 302 | 308 | 359 | "HeavyShowers" | 299 | 305 | 356 | "LightSleet" | 182 | 185 | 281 | 284 | 311 | 314 | 317 | 350 | 377 | "LightSleetShowers" | 179 | 362 | 365 | 374)
    ICON=􀇉
    ;;
"ThunderyHeavyRain" | 389 | "ThunderyShowers" | 200 | 386 | "ThunderySnowShowers" | 392)
    ICON=􀇟
    ;;
"LightSnow" | 227 | 320 | "LightSnowShowers" | 323 | 326 | 368)
    ICON=􀇏
    ;;
"HeavySnow" | 230 | 329 | 332 | 338 | "HeavySnowShowers" | 335 | 371 | 395)
    ICON=􀇥
    ;;
"Unknown" | *)
    ICON=􀆿
    echo $weather_desc
    ;;
esac

LABEL="${temp_C}°C"

sketchybar --set $NAME icon="$ICON" label="$LABEL"
