#!/bin/bash

read -p "Enter a directory path: " dirpath
suffix="_backup"


for file in "$dirpath"/*.txt; do
   
        name="${file##*/}"
        prefix="${name%.*}"
        ext="${name##*.}"
        new_name="${prefix}${suffix}.${ext}"
        echo "Renaming $name to $new_name"
        mv "$file" "$dirpath/$new_name"
    
done
echo "All files have been renamed."