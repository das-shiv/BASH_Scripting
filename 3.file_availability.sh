#!/bin/bash

# This script checks the availability of .ssh directory in users home directory by running an if else statement

if [ -d ~/.ssh ]
then
	echo "The .ssh directory is present"
else
	echo "The .ssh directory is not present"
fi


# Checking if a file named "Install_Script.sh" is present in users home directory


if [ -f ~/Install_Script.sh ]
then
	echo "The install script is present"
else
	echo "The install script is not present"
fi
