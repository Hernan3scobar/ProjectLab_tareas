#!/bin/bash

read -p "Enter a file path: " file_path

[ -f "$file_path" ] &&  \
grep "[0-9]" "$file_path" && \
namefile=$(basename "$file_path")  || \

echo "The file does not exist or the does not contain a number"