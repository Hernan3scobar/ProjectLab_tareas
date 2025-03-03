read -p "Enter a file path: " file_path

[ -f "$file_path" ] &&  \
echo "Lines with two consecutive spaces: " 
grep -E ' {2,}' "$file_path" && \
namefile=$(basename "$file_path")  || \
echo "The file does not exist or does not contain two consecutive spaces"