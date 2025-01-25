#!/bin/bash

# This script attempts to process a list of files, but has a subtle bug.
# It uses a loop that iterates over the list, but does not handle files that are missing.

files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/missing.txt")

for file in "${files[@]}"; do
  # Attempt to process each file.
  # Error handling is missing
  echo "Processing: $file"
  cat "$file" > /dev/null 2>&1
  echo "Done processing: $file"
done