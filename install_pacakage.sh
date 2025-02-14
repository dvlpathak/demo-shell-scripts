#!/bin/bash


<<info

This script will install the pacakage that you 
pass the arguments

eg. ./install_package.sh nginx
./install_package.sh dockor.io
./install_package.sh unzip

info



echo "Installing $1"

# In this \dev\null is a empty path in which output doesnot show on you current process and redirect to it

sudo apt-get update -y > \dev\null
sudo apt-get install $1 -y

echo " Installation Completed "


