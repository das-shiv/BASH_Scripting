#!/bin/bash

# This script install any package the user wants, if the package doesn't exists then it checks the exit code to inform the user.

read -p "Enter the name of the package you want to install: " package

sudo apt update && sudo apt install $package -y

if [ $? -eq 0 ]
then
	echo "$package installed successfully, the $package is available at: "
	which $package
else
	echo "$package was not installed, make sure you have entered a valid name."
fi
