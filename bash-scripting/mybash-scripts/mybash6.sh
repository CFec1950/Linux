#!/bin/bash

file=$1

if [ -f $file]; then
echo "$file is a regular file"
exit 0
elif [ -d $file]; then
echo "$file is a directory"
exit 1 
else
echo "$file is something else"
exit 2
fi
done
