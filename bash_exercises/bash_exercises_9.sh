#!/bin/bash

#!/bin/bash

read -p "Enter a source directory: " srcdir
read -p "Enter a destination directory: " destdir

[ -d "$srcdir" ] || { echo "Source directory does not exist."; exit 1; }
[ -d "$destdir" ] || mkdir "$destdir" && echo "Directory $destdir has been created."

for file in "$srcdir"/*.log; do
    [ -f "$file" ] && mv "$file" "$destdir"
done

echo "All files have been copied."
