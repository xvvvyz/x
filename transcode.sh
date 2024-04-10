#!/usr/bin/env bash

if [ -z "$1" ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

input="$1"
output="${input%.*}-transcoded.mp4"

docker exec jelly /usr/lib/jellyfin-ffmpeg/ffmpeg \
  -i "$input" \
  -map 0:v -map 0:a \
  -c:v libx264 -preset slow -crf 18 -profile:v high -level 4.1 -pix_fmt yuv420p \
  -c:a aac -b:a 192k -ar 48000 -ac 2 \
  -movflags +faststart \
  "$output"
