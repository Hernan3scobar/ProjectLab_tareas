#!/bin/bash 
read -p "Enter the full path to the backup script: " path

[[ ! -f "$path" ]] && { echo "Error: File does not exist."; exit 1; }
[[ ! -x "$path" ]] && chmod +x "$path"

(crontab -l 2>/dev/null; echo "0 0 * * * /bin/bash \"$path\"") | crontab -

echo "Backup script scheduled to run daily at midnight."
