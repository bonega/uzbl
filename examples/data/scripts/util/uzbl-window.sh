#!/bin/sh
# uzbl window detection

UZBL_WIN_POS="$( xwininfo -id "$UZBL_XID" | \
                 sed -n -e '[ ]*s/Corners:[ ]*[+-]\([0-9]*\)[+-]\([0-9]*\).*$/\1 \2/p' )"
UZBL_WIN_SIZE="$( xwininfo -id "$UZBL_XID" | \
                  sed -n -e '[ ]*s/-geometry[ ]*\([0-9]*\)x\([0-9]*\).*$/\1 \2/p' )"
UZBL_WIN_POS_X="$( printf "$UZBL_WIN_POS" | cut -d ' ' -f 1 )"
UZBL_WIN_POS_Y="$( printf "$UZBL_WIN_POS" | cut -d ' ' -f 2 )"
UZBL_WIN_WIDTH="$( printf "$UZBL_WIN_SIZE" | cut -d ' ' -f 1 )"
UZBL_WIN_HEIGHT="$( printf "$UZBL_WIN_SIZE" | cut -d ' ' -f 2 )"
