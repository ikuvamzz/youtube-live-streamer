#!/bin/bash

set -e

while true
do
  ffmpeg -re -i $M3U8_URL -c:v copy -c:a aac -ar 44100 -ab 128k -ac 2 -strict -2 -flags +global_header -bsf:a aac_adtstoasc -bufsize 3000k -f flv $YOUTUBE_KEY
done
