#!/bin/bash

# This script uninstall any package the user wants.

read -p "Enter the name of the package you want to install: " package

sudo apt purge $package -y >> /dev/null

if [ $? -eq 0 ]
then
	echo "$package uninstalled successfully"
	exit 46 #exit code is set to 46 if package was uninstalled
else
	echo "$package was not uninstalled, make sure you have entered a valid name."
	exit 120 #exit code is set to 120 if the package was not installed
fi
