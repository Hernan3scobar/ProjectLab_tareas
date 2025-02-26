#!/bin/bash 


read -p "Enter a directory path: " dirpath
days=7

for file in $dirpath/*; do
    if [ -f "$file" ]; then
        file_date=$(stat -c %Y "$file")
        current_date=$(date +%s)
        diff=$((current_date - file_date))
        if [ $diff -gt $((days * 86400)) ]; then
            echo "Deleting $file"
            rm "$file"
        fi
    fi
done


