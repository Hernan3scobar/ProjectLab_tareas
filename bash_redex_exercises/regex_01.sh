#!/bin/bash

read -p "Enter a path to a file: " file

[ -f "$file" ] &&  \
grep --color=always  "Linux" "$file" && \
echo "File $file contains the word 'linux'" || \
echo "The file does not exist or the $file does not contain the word 'linux'"