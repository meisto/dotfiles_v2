#!/bin/dash
# ======================================================================
# Author: Tobias Meisel (meisto)
# Creation Date: Fri 05 Nov 2021 10:19:52 PM CET
# Description: Quickstart a website from a file
# ======================================================================

# Default file name
FILENAME="/home/tobias/config/database/website_lookup.list"

selection=$(cut -d',' -f1 "$FILENAME" | rofi -dmenu)
url=$(grep -E "^$selection,.*\$" $FILENAME | cut -d',' -f2)

# Only open when popup is not cancelled
[ -n "$selection" ] && firefox $url
