#/bin/bash

# Function to generate a random password
generate_password() {
    local length=$1

    # Define a character pool for password genaration
    local char_pool='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'

    # Use /dev/urandom to generate random bytes and convert them to characters
    local password=$(head /dev/urandom | tr -dc "$char_pool" | head -c "$length")

    echo "Generated Password: $password"
}

# Read input password length
read -p "Enter the desired password length: " length

generate_password "$length"
