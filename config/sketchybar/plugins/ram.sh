#!/bin/bash

vmstat=$(vm_stat)
free=$(echo "$vmstat" | awk '/Pages free/ {gsub("\\.",""); print $3}')
inactive=$(echo "$vmstat" | awk '/Pages inactive/ {gsub("\\.",""); print $3}')
used=$(echo "$vmstat" | awk '/Pages active|Pages wired|Pages occupied/ {gsub("\\.",""); sum+=$3} END{print sum}')
total=$((used + free + inactive))
percent=$((used * 100 / total))

sketchybar --set $NAME label="${percent}%"
