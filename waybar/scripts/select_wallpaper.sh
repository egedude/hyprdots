#!/bin/bash

WALLPAPER_DIR="$HOME/Resimler/Wallpapers"

SELECTED=$(find "$WALLPAPER_DIR" -type f | sort | wofi --dmenu --show-icons --lines 10 --prompt "Select Wallpaper:")

if [[ -n "$SELECTED" ]]; then
  swww img "$SELECTED" \
    --transition-type grow \
    --transition-pos 0,0 \
    --transition-duration 0.8
fi
