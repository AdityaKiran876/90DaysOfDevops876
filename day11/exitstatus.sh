#!/bin/bash

# Prompt user for directory path and name
read -p "Enter the path where you want to create a directory: " path
read -p "Enter the name of the directory: " name

# Check if the path exists and is writable
if [[ ! -d "$path" ]]; then
    echo "Error: The specified path does not exist."
    exit 1
elif [[ ! -w "$path" ]]; then
    echo "Error: No write permission for the specified path."
    exit 1
fi

# Create the directory and check if successful
mkdir -p "$path/$name"
if [[ $? -ne 0 ]]; then
    echo "Failed to create directory."
    exit 1
else
    echo "Directory created successfully at $path/$name."
fi
