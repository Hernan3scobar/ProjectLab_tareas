#!/bin/bash 

read -p "Enter the file name: " filename
read -p "Enter a word to replace: " word
read -p "Enter a word to replace with: " replace

if [ ! -f "$filename" ]; then
    echo "File does not exist!"
    exit 1
fi

sed -i "s/$word/$replace/g" $filename


