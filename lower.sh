#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <starting_directory>"
    exit 1
fi

# Assign the provided argument to the variable
start_dir="$1"

# Check if the provided directory exists
if [ ! -d "$start_dir" ]; then
    echo "Error: Directory '$start_dir' not found."
    exit 1
fi

# Find and process all .pddl files in the directory and its subdirectories
find "$start_dir" -type f -name "*.pddl" -print0 | while IFS= read -r -d $'\0' file; do
    # Convert the content of each file to lowercase and overwrite the file
    tr '[:upper:]' '[:lower:]' < "$file" > "$file.tmp" && mv "$file.tmp" "$file"
done

echo "Conversion completed successfully."

