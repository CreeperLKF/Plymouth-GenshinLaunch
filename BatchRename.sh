#!/bin/bash
# This script takes a directory name as an argument and renames all files in that directory that match the pattern "file_XXX" to "file_X", where X is a digit.

# Check if the argument is a valid directory
if [ -d "$1" ]; then
  # Loop through all files in the directory
  for file in "$1"/*.png; do
    # Extract the file name without the extension
    filename=$(basename "$file" | cut -f 1 -d '.')
    # Check if the file name matches the pattern "file_XXX"
    if [[ $filename =~ ^Genshin_[0-9]{3}$ ]]; then
      # Remove the leading zeros from the file name
      newname=$(echo "$filename" | sed 's/Genshin_0*/Genshin_/')
      # Add the file extension
      newname="$newname.${file##*.}"
      # Rename the file
      mv "$file" "$1/$newname"
      # Print a message
      echo "Renamed $file to $1/$newname"
    fi
  done
else
  # Print an error message
  echo "Invalid directory: $1"
fi
