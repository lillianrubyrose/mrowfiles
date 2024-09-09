#!/bin/bash
grim -g "$(slurp -p)" -t ppm - | magick - -format '%[pixel:p{0,0}]' txt:- | sed -n 's/.*#\([0-9A-Fa-f]\{6\}\).*/#\1/p' | head -n 1 | wl-copy -n
