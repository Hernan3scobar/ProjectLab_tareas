#!/bin/bash

read -p "Enter a file path: " file_path

[ -f "$file_path" ] &&  \
grep "^ERROR" "$file_path" && \
count=$(grep -c "^ERROR" "$file_path") && \
basename=$(basename "$file_path") && \
echo "The file $basename contains $count lines starting with 'ERROR'" || \
echo "The file does not exist or does not contain lines starting with 'ERROR'"