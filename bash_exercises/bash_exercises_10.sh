#!/bin/bash

df -h | while read -r filesystem size used avail perc mountpoint; do
    if [[ "$filesystem" == "drivers" ]]; then
        echo "Percentage used: $perc"
    
    elif [  "${perc%?}" -gt 80 ]; then
        echo "WARNING!!! Disk space is less that 80%"
        exit 1
    fi

done