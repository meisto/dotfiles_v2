#!/bin/dash
# Source: https://github.com/jarun/nnn/blob/master/plugins/nuke

FILEPATH="$1"
FILENAME=$(basename "$FILEPATH")
FILEEXTEN="${FILENAME##*.}"

case $FILEEXTEN in
   pdf)
      nohup zathura "$FILEPATH" > /dev/null 2>&1 &
      exit 0;;

   py|md|sh|bash|zsh|txt|json|tex)
      $EDITOR "$FILEPATH"
      exit 0;;

   html)
      firefox "$FILEPATH"
      exit 0;;

   png|jpg|jpeg|webp)
      sxiv "$FILEPATH"
      exit 0;;
esac

exit 1
