#!/bin/bash

read -p "Enter the first mark (out of 100): " mark1
read -p "Enter the second mark (out of 100): " mark2
read -p "Enter the third mark (out of 100): " mark3

average=$(( (mark1 + mark2 + mark3) / 3 ))

echo "Average: $average"

if [ $average -ge 90 ]; then
    echo "Grade: S"
elif [ $average -ge 80 ]; then
    echo "Grade: A"
elif [ $average -ge 60 ]; then
    echo "Grade: B"
elif [ $average -ge 40 ]; then
    echo "Grade: P"
else
    echo "Grade: F"
fi

