#!/bin/bash

FILE="$HOME/.config/foot/themes/noctalia"

[ -f "$FILE" ] || exit 0

BG_LINE=$(sed -n '3p' "$FILE")

if [[ "$BG_LINE" == "background = 1f1e1a" || "$BG_LINE" == "background = 2b2b2b" ]]; then
    sed -i '2s/.*/alpha = 1.0/' "$FILE"
fi

