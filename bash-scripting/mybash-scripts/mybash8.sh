#!/bin/bash

function file_count() 
	{
	local directory=$1
	count_file=$(ls $directory | wc -l)
	echo "$directory"
	echo "$count_file"
	}

file_count /etc
file_count /var
file_count /usr/bin 
