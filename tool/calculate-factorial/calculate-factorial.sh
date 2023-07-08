#!/bin/bash

# Function to calculate factorial
calculate_factorial() {
  local number=$1
  local factorial=1

  # Check if number is non-negative
  if [[ $number -lt 0 ]]; then
    echo "Error: Factorial is not defined for negative numbers."
    return
  fi

  # Calculate factorial
  for (( i = 1; i<= number; i++ )); do
    factorial=$((factorial * i))
  done

  echo "Factorial of $number is: $factorial"
}

# Read input number
read -p "Enter a number to calculate its factorial: " input

# Call the factorial function with the input number
calculate_factorial "$input"

