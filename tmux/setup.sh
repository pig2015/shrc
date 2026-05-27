#!/bin/bash

if ! command -v tmux &>/dev/null; then
    echo "tmux not installed, aborting"
    exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC="$SCRIPT_DIR/tmux.conf"
DEST="$HOME/.tmux.conf"

if [ ! -e "$DEST" ] && [ ! -L "$DEST" ]; then
    ln -s "$SRC" "$DEST"
    echo "Created symlink: $DEST -> $SRC"
else
    echo "$DEST already exists, skipping symlink creation"
fi

if tmux has-session &>/dev/null; then
    tmux source-file "$DEST"
    echo "Sourced $DEST"
else
    echo "No tmux server running, skipping source"
fi
