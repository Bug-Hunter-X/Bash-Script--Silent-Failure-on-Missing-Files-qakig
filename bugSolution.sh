#!/bin/bash

# This script is an improved version of the buggy script. 
# It checks for the existence of the file before processing

files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/missing.txt")

for file in "${files[@]}"; do
  # Check if the file exists
  if [ -f "$file" ]; then
    # Process the file if it exists
    echo "Processing: $file"
    cat "$file" > /dev/null 2>&1
    echo "Done processing: $file"
  else
    # Handle the error if the file does not exist
    echo "Error: File '$file' not found"
  fi
done