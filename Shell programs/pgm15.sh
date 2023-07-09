#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Please provide the username as a command line argument."
  exit 1
fi

username=$1

last_login=$(last -1 "$username")

failed_logins=$(echo "$last_login" | grep "failed")

output_file="login_details.txt"
echo "Last login details for user: $username" > "$output_file"
echo "$last_login" >> "$output_file"
echo -e "\nFailed logins:" >> "$output_file"
echo "$failed_logins" >> "$output_file"

echo "Login details stored in $output_file."

