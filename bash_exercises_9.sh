#!/bin/bash

read -p "Enter a source directory: " srcdir
read -p "Enter a destination directory: " destdir

if [ -d $srcdir ] && [ ! -d $destdir ]; then
        mkdir $destdir
        echo "Directory $destdir has been created."
else
        echo "Destination directory already exists."
fi
if [ -d $srcdir ] && [ -d $destdir ]; then

    for file in "$srcdir"/*.log; do
        if [ -f $file ]; then
            mv $file $destdir
        fi
    done
    echo "All files have been copied."
else
    echo "Source or destination directory does not exist."
fi