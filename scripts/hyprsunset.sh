#!/bin/bash

if pgrep -x "hyprsunset" >/dev/null; then
  pkill -x "hyprsunset"
else
  hyprsunset -t $(jq '.temperature | fromjson' ~/.config/hypr/config.json) &
fi
