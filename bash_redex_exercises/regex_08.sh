#!/bin/bash

 read -p "Enter a file path: " file_path

[ -f "$file_path" ] &&  {
    grep --color=always -n "Linux" "$file_path"
} || echo "The file does not exist."