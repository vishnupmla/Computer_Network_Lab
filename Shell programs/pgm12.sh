#!/bin/bash

read -p "Enter a number: " number

echo "Multiplication Table of $number:"

for ((i = 1; i <= 10; i++)); do
    result=$((number * i))
    echo "$number x $i = $result"
done

