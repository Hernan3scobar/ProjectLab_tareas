#!/bin/bash 

read -p "Enter a file path: " file_path

[ -f "$file_path" ] &&  {
    filename=$(basename "$file_path")
    count=$(grep -o "error" "$file_path" | wc -l)
    echo "The word 'error' appears $count times in the file $filename."
} || echo "The file does not exist."

