#!/bin/bash

dirpath="."
treshold=100


for file in "$dirpath"/*; do
    if [ -f "$file" ]; then
        size=$(du -m "$file" | awk '{print $1}')
        if [ "$size" -gt $treshold ]; then
             echo "File $file size is $size MB"
        fi
        
    fi
done
