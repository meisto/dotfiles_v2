#!/bin/zsh
NUMBER_BARS=10
BAR_SYMBOL="\u258B" # $(echo -e "\u258B")


volume=$(amixer -D pulse get Master |
   grep -o -E '[0-9]?[0-9]%' |
   head -1 |
   tr -d '%'
)



A=$(dc -e "2 k $volume 100 / $NUMBER_BARS * 0 k 1 / p")
B=$(dc -e "0 k $NUMBER_BARS $A - p")

active_bars=""
for i in $(seq $A); do active_bars="$BAR_SYMBOL$active_bars"; done;
rest_bars=""
for i in $(seq $B); do rest_bars="$BAR_SYMBOL$rest_bars"; done;

echo -n "Sound: "
echo -e "\e[0;34m$active_bars\e[0;36m$rest_bars"
