#!/bin/bash


<<info

This shell scripts checks if user exists

info


read -p "Enter the username you wish to check :  " username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 1 ];
then 
	echo "user exists"
else
	echo "user does not exists"
fi
