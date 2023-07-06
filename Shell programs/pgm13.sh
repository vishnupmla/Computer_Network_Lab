#!/bin/bash

read -p "Enter a decimal number: " decimal

binary=""  

while [ $decimal -gt 0 ]; do
    remainder=$((decimal % 2))
    binary="$remainder$binary"
    decimal=$((decimal / 2))
done

echo "Binary representation: $binary"

