#!/bin/bash

read -p "Enter a file path: " file_path

[ -f "$file_path" ] &&  \
grep -E --color=always -o "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}" "$file_path" && \
count_mails=$(grep -E -o "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}" "$file_path" | wc -l) && \
filename=$(basename "$file_path") && \
echo "File $filename contains $count_mails email addresses" || \
echo "The file does not exist or the $file_path does not contain any email addresses"