#!/bin/bash

WP_DIR="$HOME/Wallpaper"
RAND_WP=$(find "$WP_DIR" -type f | shuf -n 1)

hyprctl hyprpaper preload "$RAND_WP"
hyprctl hyprpaper wallpaper "eDP-1,$RAND_WP"
