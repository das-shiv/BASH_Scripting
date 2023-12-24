#!/bin/bash

# This script update the system based on user input for OS type

value=0

while [ $value -ne 1 ]
do
	echo "Enter the number next to your distribution type"
	echo "1 - Ubuntu"
	echo "2 - Debian"
	echo "3 - Redhat Linux"
	echo "4 - Centos"
	echo "5 - Fedora"
	echo "6 - Amazon linux"
	echo "7 - Exit"
	
	read distro;
	
	case $distro in
		1  | 2)
		sudo apt update -y && sudo apt upgrade -y ;;
		
		3 | 4 | 5 | 6)
		sudo yum update -y && sudo yum upgrade -y ;;
		
		7)
		value=1 ;;
		
		*)
		echo "You entered some wrong value, try again"
	esac
done	

	
