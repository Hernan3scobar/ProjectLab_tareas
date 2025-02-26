#!/bin/bash

read -p "Enter a filename: " filename

if [ -r $filename ]; then
    echo "File exists."
else
    echo "File does not exist."
fi
