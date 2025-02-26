#!/bin/bash
read -p "Enter a source directory: " srcdir

if [ -d $srcdir ]; then
    for file in $srcdir/*.sh; do
        if [ -f $file ]; then
            chmod +x $file    
            chmod +w $file      
            chmod +r $file      
        fi
    done
    echo "All files have been modified."
fi
