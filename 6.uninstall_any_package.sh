#!/bin/bash

# This script uninstall any package the user wants.

read -p "Enter the name of the package you want to install: " package

sudo apt purge $package -y

if [ $? -eq 0 ]
then
	echo "$package uninstalled successfully"
else
	echo "$package was not uninstalled, make sure you have entered a valid name."
fi
