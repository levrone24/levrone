#!/bin/bash

# Directory containing your .txt files
txt_dir="$HOME/Documents/InfinityMageNovel-main/Infinity Mage Chapters 1-1277 Translated"

# Directory to store the converted .epub files
epub_dir="$HOME/Documents/InfinityMageNovel-main/Infinity Mage Chapters 1-1277 EPUB"

# Create the output directory if it doesn't exist
mkdir -p "$epub_dir"

# Loop through each .txt file in the directory
for txt_file in "$txt_dir"/*.txt; do
    # Extract the base name of the file (without extension)
    base_name=$(basename "$txt_file" .txt)

    # Convert the .txt file to .epub using pandoc
    pandoc "$txt_file" -o "$epub_dir/$base_name.epub"

    echo "Converted $txt_file to $epub_dir/$base_name.epub"
done

echo "All chapters converted successfully!"
