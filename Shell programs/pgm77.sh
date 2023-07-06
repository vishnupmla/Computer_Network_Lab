#!/bin/bash

# Function to convert file contents from uppercase to lowercase
convert_to_lowercase() {
    local input_file=$1
    local output_file="lowercase_${input_file}"

    tr '[:upper:]' '[:lower:]' < "$input_file" > "$output_file"

    line_count=$(wc -l < "$output_file")
    word_count=$(wc -w < "$output_file")
    character_count=$(wc -m < "$output_file")

    echo -e "\nResultant file (in descending order):\n"
    sort -r "$output_file"

    echo "Line Count: $line_count"
    echo "Word Count: $word_count"
    echo "Character Count: $character_count"
}

read -p "Enter the path to the input file: " input_file
echo -e "The file content is:\n"
cat $input_file

# Call the function to convert contents to lowercase, count lines, words, and characters, and display the resultant file
convert_to_lowercase "$input_file"

