#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC="$SCRIPT_DIR/tmux.conf"
DEST="$HOME/.tmux.conf"

if [ ! -e "$DEST" ] && [ ! -L "$DEST" ]; then
    ln -s "$SRC" "$DEST"
    echo "Created symlink: $DEST -> $SRC"

    if [ -n "$TMUX" ]; then
        tmux source-file "$DEST"
        echo "Sourced $DEST in current tmux session"
    fi
else
    echo "$DEST already exists, skipping"
fi
