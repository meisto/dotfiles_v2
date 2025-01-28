#!/bin/sh
# ======================================================================
# Author: Tobias Meisel (meisto)
# Creation Date: Tue 25 Jan 2022 01:12:35 AM CET
# Description: -
# ======================================================================
alias vi="nvim"

# Aliases to load correct config files and settings
alias tm="tmux"

# Run the tmux start script
alias t="start_tmux.sh"


# Ask for interaction when using mv, cp, rm
alias mv="mv -i"
alias cp="cp -i"
alias rm=trash
# alias rm="rm -i"
alias tp="trash-put"


take() {
   mkdir -p "$1"
   cd "$1" || exit
}

trim() {
   awk '{\$1=\$1;print}'
}

# Always run grep in auto color mode
alias grep="grep --color=auto"

## Replace ls with eza
alias l="eza -lah --group-directories-first"
alias ls="eza --group-directories-first"
alias sl=l
alias cd="z"

## Debian specific binary names
if ! grep -E "^(VERSION|NAME)=\"EndeavourOS\"$" /etc/os-release > /dev/null; then
   alias cat="batcat"
   alias bat="batcat"
   # For debian fd has annother name
   alias fd="fdfind"

   alias python="/bin/python3.9"

else
   alias cat="bat"

fi;

