#!/bin/bash
#Connor Finlay ec1950697
#26/4/2022
# read-menu: a menu driven system information program
clear
valid=0 
while valid=0; do #for input validation
echo "
Please Select:
1. Create backup of script
2. Create System Log File
3. Copy File
4. Move File
0. Quit
"
read -p "Enter selection [0-4] > "
	if [[ $REPLY =~ ^[0-4]$ ]]; then #sets expected inputs for loop
		if [[ $REPLY == 0 ]]; then 
			echo "Program terminated."
			exit
		fi
		if [[ $REPLY == 1 ]]; then
			echo "You chose to back up the script"
			while true ; do
			echo "Enter the script name:"
			read scriptname
			if [ -f "$scriptname" ]; then #test to make sure that the script exists
				echo "The script exists."
				break
			else
				echo "Script doesn't exist."
			fi
			done
			cp $scriptname /home/script_backup_$(date +%d-%m-%Y).sh #takes name of script and adds date
			echo "Script has been backed up"
			valid=0 #for validation
		fi
		if [[ $REPLY == 2 ]]; then
			w > /home/log_dir/log_file_$(date +%d-%m-%Y-%H:%M:%S).log #creates original file
			df -h >> /home/log_dir/log_file_$(date +%d-%m-%Y-%H:%M:%S).log #appends to file
			ps  >> /home/log_dir/log_file_$(date +%d-%m-%Y-%H:%M:%S).log #appends to file
			echo "Printed to file"
			valid=0	
		fi
		if [[ $REPLY == 3 ]]; then
			while true ; do
			echo "Enter the file name:"
			read filename
			if [ -f "$filename" ]; then #test to see file exists
				echo "The file exists."
				break
			else
				echo "File doesn't exist."
			fi
			done
			while true ; do
				echo "Enter destination"
				read dest
				if [ -d "$dest" ]; then #test to make sure destination folder exists
					echo "The directory exists."
					cp $filename /$dest/ #the copy command
					echo "file has been copied"
					break
				else
					echo "The directory doesn't exist."
				fi
			done
			valid=0 #for validation
		fi
		if [[ $REPLY == 4 ]]; then
			while true ; do
			echo "Enter the file name:"
			read m_filename
			if [ -f "$m_filename" ]; then #test to make sure file exists
				echo "The file exists."
				break
			else
				echo "File doesn't exist."
			fi
			done
			while true ; do
				echo "Enter destination"
				read m_dest
					if [ "$m_dest" ]; then #test to make sure destination folder exists
						echo "The directory exists/file rename accepted"
						echo "File will now be moved"
						mv $m_filename /$m_dest #the move/rename command
						echo "file has been moved/renamed"
						break
					else
						echo "The directory doesn't exist."
					fi
				done
				valid=0 #for validation
		fi
	else 
		echo "Invalid Entry " >&2
	fi
done
