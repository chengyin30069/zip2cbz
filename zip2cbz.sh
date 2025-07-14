#!/bin/bash

# Loop through all .zip files in the current directory
for file in *.zip; do
    # Check if there are any .zip files
    [ -e "$file" ] || continue
    
    # Extract the filename without extension
    base_name="${file%.zip}"

    # Rename the file to .cbz, handling spaces properly
    mv -- "$file" "$base_name.cbz"
    
    echo "Converted: '$file' -> '$base_name.cbz'"
done

echo "Conversion complete!"
