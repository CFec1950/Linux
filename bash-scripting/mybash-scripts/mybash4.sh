#!/bin/bash
for file in *; do
if [ -x "$file" ]; then
echo "You have permission to execute $file"
ls -l $file
else
echo "You dont have permission to execute $file" 
fi
done
