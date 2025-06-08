i=1
for file in *; do
  ext="${file##*.}"
  mv "$file" "{$i}.$ext"
  ((i++))
done
