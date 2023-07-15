#!/bin/bash

# Function to perform file backup
perform_backup() {
    local source_dir=$1
    local destination_dir=$2

    # Check if source directory exists
    if [[ ! -d $source_dir ]]; then
        echo "Error: Source directory $source_dir does not exist."
        return
    fi

    # Create destination directory if it does not exist
    if [[ ! -d $destination_dir ]]; then
        mkdir -p "$destination_dir"
    fi

    # Generate a timestamp for the backup
    local timestamp=$(date +"%Y%m%d%H%M%S")
    local backup_dir="$destination_dir/backup_$timestamp"

    # Copy files from source directory to backup directory
    cp -R "$source_dir" "$backup_dir"

    echo "Backup complated. FIles backed up to: $backup_dir"
}

# Read input source and destination directories
read -p "Enter the source directory to backup: " source_dir_input
read -p "Enter the destination directory to store the backup: " destination_dir_input

perform_backup "$source_dir_input" "$destination_dir_input"
