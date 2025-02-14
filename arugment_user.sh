#!/bin/bash


<<help

Create user with help of arguments

help


#arguments deep test@123


sudo useradd -m "$1"

echo -e "$2\n$2" | sudo passwd "$1"


echo "Create username: $1 "

echo " Create Password: $2 "

echo "======== User Created ========"

echo  " list of users " | cat /etc/passwd | grep $1 


echo "=========== User Deleted =========="

sudo userdel "$1"

echo "============ User Deleted Successfully ============="

if [ $( cat /etc/passwd  | grep $1 |wc | awk '{print $1}') == 0 ];
then  

echo "as wc is 0 the user is deleted"

else
	" the user was not deleted "

fi
