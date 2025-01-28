#!/bin/sh
# See: https://github.com/jarun/nnn/wiki/Usage#configuration

BLCK_DVC='0B'
CHAR_DVC='0B'
DIR='1c'
EXE='06'
REG='15' # Regular
HLN='06' # Hard Link
SLN='06' # Symlink
MSS='00'
ORP='09'
FIFO='06'
SOCKET='0B'
UNKN='06'


code="$BLCK_DVC$CHAR_DVC$DIR$EXE$REG$HLN$SLN$MSS$ORP$FIFO$SOCKET$UNKN"

# export NNN_FCOLORS="$code"
export EDITOR="nvim"
export NNN_COLORS="#C1C1C1C1"
export NNN_OPENER="launcher.sh"
export NNN_TRASH=1

# Show hidden by default
export NNN_OPTS="H"

nnn -c
