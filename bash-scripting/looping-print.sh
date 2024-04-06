#!/bin/bash

echo "Please enter the number you would like to countdown from"
read ctd

for ((i=1; i<=ctd; i++))
do
    dis=$((ctd - i))
    echo $dis
    if [ $dis -eq 0 ]; then
        echo "Blast off!"
    fi
done
