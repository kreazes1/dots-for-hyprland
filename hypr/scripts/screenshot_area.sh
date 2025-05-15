#! /bin/bash

DIR="$HOME/Pictures"
mkdir -p "$DIR"
FILENAME="$DIR/screenshot_$(date +%Y-%m-%d_%H-%M-%S).png"

grim -g "$(slurp)" - | tee "$FILENAME" | swappy -f -
