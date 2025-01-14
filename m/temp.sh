#!/bin/bash

# Directory
input_directory="."

# Temporary directory
temp_directory="./temp_resized"

# Create temporary directory
mkdir -p "$temp_directory"

# Loop through all png files in the input directory
for file in "$input_directory"/*.png; do
    # Get the base name of the file
    filename=$(basename "$file")
    
    # Resize the image using ffmpeg while maintaining aspect ratio
    ffmpeg -i "$file" -vf "scale=240:-1" "$temp_directory/$filename"
    
    # Replace the original file with the resized one
    mv "$temp_directory/$filename" "$file"
done

# Remove temporary directory
rmdir "$temp_directory"

echo "All PNG files in the current directory have been resized with the original filenames."

