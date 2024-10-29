#!/bin/sh
# author: meisto
# date: 2024-02-20 01:01:34

dir=~/.config/wallpapers/
monitor=$(hyprctl monitors -j | jq '.[0].name' | sed 's/\"//g')

if [ -d "$dir" ]; then
   file=$(find $dir -name '*.png' -or -name '*.jpg' | shuf -n 1)

   echo "Wallpaper Directory: ${dir}"
   echo "File Path:           ${file}"
   echo "Monitor:             ${monitor}"

   hyprctl hyprpaper unload all
   hyprctl hyprpaper preload $file
   hyprctl hyprpaper wallpaper "$monitor, $file"
fi
