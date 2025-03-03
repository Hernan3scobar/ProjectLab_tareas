#!/bin/bash 

read -p "Enter a file path: " file_path

[ -d "$file_path" ] &&  {
    grep --color=always -v "success" "$file_path"/*.log
   
} || echo "The directory does not exist."

