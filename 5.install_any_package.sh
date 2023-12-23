#!/bin/bash

# This script install any package the user wants, if the package doesn't exists then it checks the exit code to inform the user.

read -p "Enter the name of the package you want to install: " package

sudo apt update >> /dev/null && sudo apt install $package -y >> /dev/null

if [ $? -eq 0 ]
then
	echo "$package installed successfully, the $package is available at: "
	which $package
	exit 0  # If the condition is true it exit with exit code 0
else
	echo "$package was not installed, make sure you have entered a valid name."
	exit 5 # If the package was not installed we get a exit code 5
fi
