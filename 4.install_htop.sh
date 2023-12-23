#!/bin/bash

# This script install htop package on an ubuntu system

package=htop

if command -v $package
then
	echo "The $package is available...."
else
	echo "The $package is not available, let's install it......"
	sudo apt update && sudo apt install htop -y
fi

$package
