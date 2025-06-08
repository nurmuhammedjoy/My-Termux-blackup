#!/bin/bash

# Directory to process (pass as argument or use current directory)
DIR="${1:-.}"

# Loop through all files in the specified directory
for file in "$DIR"/*; do
    # Check if it is a file (not a directory)
    if [ -f "$file" ]; then
        # Rename the file by removing curly braces
        new_name=$(echo "$file" | sed 's/[{}]//g')
        mv "$file" "$new_name"
    fi
done

echo "Renaming completed!"
