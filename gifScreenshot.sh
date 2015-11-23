#!/bin/bash
outDirectory='/var/www/html'
subDir='/Screenshots/'
outName=$(date +%Y.%m.%d-%H.%M.%S.gif)
tempIP=$(ifconfig eth0 | grep inet | awk '{print $2}' | cut -d':' -f2)
IP=$(echo http://"${tempIP}" | tr -d '[[:space:]]')

tempAVI=$(mktemp /tmp/outXXXXXXXXXX.avi)
ffcast -s % ffmpeg -y -f x11grab -show_region 1 -framerate 15 \
    -video_size %s -i %D+%c -codec:v huffyuv                  \
    -vf crop="iw-mod(iw\\,2):ih-mod(ih\\,2)" $tempAVI         \
&& convert -set delay 10 -layers Optimize $tempAVI $outDirectory$subDir$outName

echo $IP$subDir$outName | xclip -selection clipboard
