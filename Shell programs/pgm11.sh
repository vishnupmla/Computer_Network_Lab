#!/bin/bash


for username in $(awk -F: '/^stud/{print $1}' /etc/passwd); do

    sudo usermod -d "/usr/$username" "$username"

    echo -e "$username$username123\n$username$username123" | sudo passwd "$username"
done

