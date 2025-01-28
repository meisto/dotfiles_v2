# ======================================================================
# Author: Tobias Meisel (meisto)
# Creation Date: Tue 25 Jan 2022 01:05:05 AM CET
# Description: -
# ======================================================================

n() {
   # Source: https://github.com/jarun/nnn/blob/master/misc/quitcd/quitcd.bash_zsh
   if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
      echo "No recursive call to nnn allowed."
      return
   fi;

   export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

   # Actually start nnn
   run_nnn.sh

   if [ -f "$NNN_TMPFILE" ]; then
      . "$NNN_TMPFILE"
      rm -f "$NNN_TMPFILE"
   fi
}

# Modify prompt when sourced from inside a NNN instance.
[ -n "$NNNLVL" ] && PS1="$PS1 NNN "


# Aliases
alias nnn="nnn -e"
