#!/bin/bash
for file in *.mov; do
    destination="output${file}";
    mkdir -p "$destination";
    ffmpeg -i "$file" -r 25 "$destination/image-%d.jpeg";
done