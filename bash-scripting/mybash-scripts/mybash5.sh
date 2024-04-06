#!/bin/bash
declare -a animals=("pig" "cat" "sheep" "dog")
for i in "${animals[@]}"; do
	echo $i
done
