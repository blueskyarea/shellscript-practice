#!/bin/bash

# Function to check website availability
check_website_availability() {
    local website=$1

    # Send a HEAD request to the website and check the response code
    local response_code=$(curl -s -o /dev/null -w "%{http_code}" "$website")

    if [[ $response_code -eq 200 ]]; then
        echo "Website $website is available."
    else
        echo "Website $website is not available. Response code: $response_code"
    fi
}

# Read input website URL
read -p "Enter the website URL to check: " website_input

check_website_availability "$website_input"
