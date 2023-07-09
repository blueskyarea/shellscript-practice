#!/bin/bash

# Function to check if a number is prime
is_prime() {
    local number=$1

    # Check if number is less than 2
    if [[ $number -lt 2 ]]; then
        echo "$number is not prime."
        return
    fi

    # Iterate from 2 to the square root of the number
    for (( i = 2; i * i < number; i++ )); do
        if [[ $((number % i)) -eq 0 ]]; then
            echo "$number is not prime."
            return
        fi
    done

    echo "$number is prime."
}

# Read input number
read -p "Enter a number to check if it's prime number: " input

is_prime "$input"

