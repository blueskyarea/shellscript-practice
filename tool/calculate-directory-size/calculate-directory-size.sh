#!/bin/bash

# Function to calculate total size of a directory
calculate_directory_size(){
    local directory=$1

    # Check if directory exists
    if [[ ! -d $directory ]]; then
        echo "Error: Directory $directory does not exist."
        return
    fi

    # Calculate total size
    local total_size=$(du -sh "$directory" | cut -f1)

    echo "Total size of directory $directory is: $total_size"
}

# Read input directory
read -p "Enter the directory path to calculate the size: " directory_input

calculate_directory_size $directory_input
