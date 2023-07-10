#!/bin/bash

# Function to convert temperature from Celsius to Fahrenheit
celsius_to_fahrenheit() {
    local celsius=$1
    local fahrenheit=$(echo "scale=2; $celsius * 9 / 5 + 32" | bc)
    echo "$celsius°C is equal to $fahrenheit°F"
}

# Function to convert temperature from Fahrenheit to Celsius
fahrenheit_to_celsius() {
    local fahrenheit=$1
    local celsius=$(echo "scale=2; ($fahrenheit - 32) * 5 / 9" | bc)
    echo "$fahrenheit°F is equal to $celsius°C"
}

# Read input temperature and unit
read -p "Enter the temperature: " temperature
read -p "Enter the unit (C or F): " unit

# Convert temperature based on the unit
if [[ $unit == "C" ]]; then
    celsius_to_fahrenheit "$temperature"
elif [[ $unit == "F" ]]; then
    fahrenheit_to_celsius "$temperature"
else
    echo "Invalid unit. Please input either C or F."
fi

