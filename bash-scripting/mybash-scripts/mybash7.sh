#!/bin/bash
function file_count()
	{
	local NO_OF_FI=$(ls -l | wc -l)
	echo "$NO_OF_FI"
	}
file_count
