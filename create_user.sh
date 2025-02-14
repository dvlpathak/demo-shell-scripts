#!/bin/bash



<<help
This is a shell script 
to create users
in your own ways
help


echo "========= Creating of User ========= "


read -p "enter the username:" username


read -p "enter the password: " password

sudo  useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"



echo "======== User created successfully ========== "
