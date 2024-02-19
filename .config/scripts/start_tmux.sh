#!/bin/bash
# ======================================================================
# Author: meisto
# Creation Date: Mon 07 Aug 2023 12:01:22 AM CEST
# Description: -
# ======================================================================

# session_name="$(pwd | rev | cut -d '/' -f 1 | rev)"
session_name=$(pwd | grep -o '[^,/]*$')

tmux_session_exists() {
   if test -z "$(tmux list-sessions -F'#{session_name}' | grep -E "^${1}\$")"; then
      return 0
   else 
      return 1
   fi;

}

if tmux_session_exists "$session_name"; then
   echo "Creating new session '${session_name}'.";
   sleep 0.01;
   tmux new-session -s "$session_name"
   exit
fi;

# Exit on nested tmux sessions
if test ! -z "$TMUX"; then
   echo "Do not nest tmux sessions."
   exit
fi;

# Query if a new session should be created
read -r -p "Session already exists. Attach? [y/n] " selection

# 
if test  "$selection" != "y"  -a  "$selection" != "n" ; then
   echo "Illegal selection."
   exit
fi;

# Attach to existing session
if test "$selection" == "y"; then
   tmux attach -t "$session_name"
   exit
fi;

# Loop until a new session name is generated.
count=1
while :; do
   new_session_name="${session_name}_${count}"
   echo "$new_session_name"

   # Found a new session name
   if tmux_session_exists "$new_session_name"; then
      tmux new-session -s "$new_session_name"
      exit
   fi;

   ((count=count+1))
done;
