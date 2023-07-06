#!/bin/bash

addition() {
    local result=$((num1 + num2))
    echo "Addition: $num1 + $num2 = $result"
}

subtraction() {
    local result=$((num1 - num2))
    echo "Subtraction: $num1 - $num2 = $result"
}

multiplication() {
    local result=$((num1 * num2))
    echo "Multiplication: $num1 * $num2 = $result"
}

division() {
    if [ $num2 -eq 0 ]; then
        echo "Division: Cannot divide by zero!"
    else
        local result=$(bc <<< "scale=2; $num1 / $num2")
        echo "Division: $num1 / $num2 = $result"
    fi
}

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

while true; do
    echo "Select an operation:"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Exit"

    
    read -p "Enter your choice (1-5): " choice

    case $choice in
        1)
            addition
            ;;
        2)
            subtraction
            ;;
        3)
            multiplication
            ;;
        4)
            division
            ;;
        5)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice!"
            ;;
    esac

    echo 
done

