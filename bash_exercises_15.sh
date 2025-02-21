#!/bin/bash 

read -p "Enter a backup directory path: " backupdir

etc="/etc"

for file in "$etc"/*.conf; do
    current_date=$(date +%Y%m%d)
    if [ -f "$file" ]; then
        # Get the base filename without the .conf extension
        base_name=$(basename "$file" .conf)
        cp "$file" "${backupdir}/${base_name}_${current_date}.conf"
        echo "Backed up $file to ${backupdir}/${base_name}_${current_date}.conf"
    fi
done
