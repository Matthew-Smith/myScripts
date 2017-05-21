#!/bin/sh -e

# Take a screenshot
# scrot /tmp/screen_locked.png

# Pixellate it 10x
# mogrify -scale 10% -scale 1000% /tmp/screen_locked.png
# convert /tmp/screen_locked.png -blur 0x5 /tmp/screen_locked.png

# Lock screen displaying this image.
i3lock --blur 8 --insidecolor=161616eb --ringcolor=2B83A6FF --insidevercolor=2B83A6FF --ringvercolor=2B83A6FF --ringwrongcolor=D64E4EFF --insidewrongcolor=D64E4EFF --bshlcolor=D64E4EFF --keyhlcolor=2F343AFF
