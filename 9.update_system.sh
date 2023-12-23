#!/bin/bash

# This script will update the system depending on the os version, and redirect the errors and logs to different files.

file=/etc/os-release # This file includes the information regarding the OS type
logs=/var/log/system_update.log # The system outputs will be redirected to this file
error=/var/log/system_update_error.log # The errors will be redirected to this file

if grep -q "ubuntu" $file || grep -q "debian" $file
then
	sudo apt update -y >>$logs 2>>$error
	sudo apt upgrade -y >>$logs 2>>$error
elif grep -q "centos" $file
then
	sudo yum update -y >>$logs 2>>$error
	sudo yum upgrade -y >>$logs 2>>$error
fi





