#!/bin/bash

read -p "Enter a file path: " file_path

[ -f "$file_path" ] &&  \
grep --color=always -i "bash" "$file_path" && \
echo "File $file_path contains the word 'Bash' regardless capital or lowercase" || \
echo "The file does not exist or the $file_path does not contain the word 'Bash' regardless capital or lowercase"
