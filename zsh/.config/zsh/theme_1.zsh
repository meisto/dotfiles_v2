# ======================================================================
# Author: Tobias Meisel (meisto)
# Creation Date: 24 May 2019
# Description: -
# ======================================================================
dir_segment() {
	set_color $1 $2
	# echo -n "\ue0b0"
}

set_color() {
	echo -n "%{$fg[$1]%}%{$bg[$2]%}"
}

# Glyphs:
# 

# All escape signs can be found in "man zshmisc" (line 1770)
# %M - machine Hostname
# %n - $USERNAME
# %? - return status of last command 0 if positive result else 1
# %# - shell state, # if privileged else %
# %d - current working directory with path
# %c - current directory without path
# %~ - like %d but path up until home is replaced by ~
# %D - date in yy-mm-dd format
# %T - current time
# %w - the date in day-dd format
# %W - the date in mm/dd/yy format
# PROMPT="$(set_color white blue) %n - %T $(set_color black green) %c $(set_color default default) "

TEXT='#CCCCCC'
BG='#222222'

COLOR1='#526272'
COLOR2='#87AF87'

COMP1="%F{$TEXT}%K{$COLOR1} %c %F{$COLOR1}%K{$COLOR2}"
COMP2="%F{#444444}%K{$COLOR2} %k%F{$COLOR2}"
COMP3="%f "
PROMPT="$COMP1$COMP2$COMP3"
