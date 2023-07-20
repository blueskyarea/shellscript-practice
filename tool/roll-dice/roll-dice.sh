#!/bin/bash

# Function to simulate a roll dice
roll_dice(){
    local num_sides=$1

    # Generate a random number between 1 and the number of sides
    local result=$((RANDOM % num_sides + 1))

    echo "You rolled a $result (out of $num_sides sides)."
}

# Read input number of sides
read -p "Enter the number of sides on the dice: " num_sides_input

roll_dice "$num_sides_input"
