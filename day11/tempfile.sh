#!/bin/bash

# Create a temporary file and store its name
temp_file=$(mktemp)

echo "Temporary file created: $temp_file"

# Set a trap to delete the temporary file upon script exit or interruption
trap 'echo "Cleaning up..."; rm -f "$temp_file"; echo "Temporary file deleted."; exit' EXIT

# Simulate some script work
echo "Writing to temporary file..."
echo "This is a test file created at $(date)" > "$temp_file"

# Additional commands (could cause unexpected exits)
echo "Simulating script execution..."
sleep 5  # Replace with actual script logic as needed

# If everything completes successfully, manually delete the file (optional)
echo "Finished work. Deleting temporary file..."
rm -f "$temp_file"
echo "Temporary file deleted."

exit 0
