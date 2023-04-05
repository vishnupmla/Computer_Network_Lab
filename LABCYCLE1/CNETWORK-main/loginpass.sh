# !/bin/bash
read -p "Enter the Username: " username
read -sp "Enter the Password: " password



if [[ $username == "mca"  && $password == "mca" ]]
then
  echo -e "\nYou're Logged In\n"
elif [ $username != "user" ] 
then
  echo -e "\nInvalid User Name\n"
else
  echo -e "\nInvalid Password\n"
fi
