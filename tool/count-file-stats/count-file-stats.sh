#!/bin/bash

# Function to count lines, words and characters in a file
count_file_stats() {
    local file=$1

    # Check if file exists
    if [[ ! -f $file ]]; then
        echo "Error: File $file does not exist."
        return
    fi

    # Count lines, words and characters
    local line_count=$(wc -l < "$file")
    local word_count=$(wc -w < "$file")
    local char_count=$(wc -m < "$file")

    echo "File: $file"
    echo "Lines: $line_count"
    echo "Words: $word_count"
    echo "Characters: $char_count"
}

# Read input file
read -p "Enter the path to a file: " file_input

count_file_stats "$file_input"

