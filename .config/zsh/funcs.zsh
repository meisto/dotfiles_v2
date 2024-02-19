#!/bin/bash
# ======================================================================
# Author: meisto
# Creation Date: Wed 21 Jun 2023 03:19:47 PM CEST
# Description: -
# ======================================================================
function todo {
   echo "Writing note to todo file."

   date_str=$(LC_ALL=de_DE.utf8 date -u +"%a %d.%m.%Y, %H:%m")

   echo "- [ ] ${date_str} --- $@" >> "$HOME/Documents/brainMkIII/TODO.md"
}
