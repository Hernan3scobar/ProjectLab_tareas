#!/bin/bash 

read -p "Enter a backup directory path: " backupdir

etc="/etc"

for file in "$etc"/*.conf; do
    current_date=$(date +%Y%m%d)
    if [ -f "$file" ]; then
        base_name=$(basename "$file" .conf)
        cp "$file" "${backupdir}/${base_name}_${current_date}.conf"
        
    fi
done
