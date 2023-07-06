#!/bin/bash

# Read the range from user input
read -p "Enter the starting number: " start
read -p "Enter the ending number: " end

echo "Prime numbers between $start and $end are:"

# Iterate through the range and check for prime numbers
for ((number = start; number <= end; number++)); do
    is_prime=true

    if [ $number -lt 2 ]; then
        is_prime=false
    fi

    for ((i = 2; i <= number / 2; i++)); do
        if [ $((number % i)) -eq 0 ]; then
            is_prime=false
            break
        fi
    done

    if $is_prime; then
        echo $number
    fi
done

