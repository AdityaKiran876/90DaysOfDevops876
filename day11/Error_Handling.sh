#!/bin/bash


<<comments
This script creats directories and files upon user input.
Usage: ./Error_handling.sh
comments

read -p "Enter the directory path where you want to create ?: " check

cd $check

ls

if [[ $? -ne 0 ]]; then echo "Please give the full path to the directory."; fi

while true;
do

	read -p "Do you want to create a file or a directory? (f/d): " option

	if [[ $option == "f" || "F" ]];
	then
		touch $check/$option
		if [[ $? -ne 0 ]]; then echo "Enter any other name to the file. It seems the file exists."; fi
		ls
		exit

	elif [[ $option == "d" || "D" ]];
	then
        	mkdir $check/$option
		if [[ $? -ne 0 ]]; then echo "Enter any other name to the directory. It seems the directory exists."; fi
		ls
		exit
	else;
		echo "Invalid option. Choose correct option."
	fi

done

echo "Execution completed"
