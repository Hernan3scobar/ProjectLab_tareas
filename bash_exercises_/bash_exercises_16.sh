#!/bin/bash 

read -p "Enter the file nameh: " filename
read -p "Enter a word to search: " word

count=$(grep -oi "$word" $filename | wc -l)

echo "The word $word appears $count times in the file $filename"
