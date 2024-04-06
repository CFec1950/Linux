#! /bin/bash

while true; do
    read -p "Enter a value (or 'q' to quit): " input

    if [ "$input" == "q" ]; then
        echo "Exiting the script."
        break
    fi
    echo "You entered: $input"
done

