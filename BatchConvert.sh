#!/bin/bash
# This script is used to convert the white background to transparent, requiring the installation of ImageMagick.

mkdir -p Launch

for file in WhiteLaunch/*.png; do
    convert "$file" -fuzz 10% -transparent white "$(basename "$file")"
done
