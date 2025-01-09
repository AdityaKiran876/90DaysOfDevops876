#!/bin/bash

# Specify the file to read
file="non_existent_file.txt"

# Try to read the file and redirect the error to error.log
if ! cat "$file" 2> error.log; then
    echo "Error: Failed to read $file. Check error.log for details."
fi

