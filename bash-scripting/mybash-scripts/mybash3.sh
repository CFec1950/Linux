#!/bin/bash

prefix="Lab"

for ((i = 1; i <= 12; i++)); do
    folder_name=$(printf "%s%02d" "$prefix" $i)
    
    if [ ! -d "$folder_name" ]; then
        mkdir "$folder_name"
        echo "Created folder: $folder_name"
    else
        echo "Folder $folder_name already exists. Skipping."
    fi
done
