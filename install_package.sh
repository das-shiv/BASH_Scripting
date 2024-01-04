#!/bin/bash
Packages = "unzip wget httpd"
SVC = "httpd"
echo "---------------------------"
echo "Starting the script"
echo "---------------------------"
echo "Installing the packages"
yum install $Packages -y > /dev/null
echo "----------------------------"
echo "Enabling the server"
echo "-----------------------------"
systemctl start $SVC
systemctl enable $SVC
echo "-------------------------------"
echo "Installing the website"
echo "------------------------------"
rm -rf /var/www/html/*
echo "Hello World from $hostname" > /var/www/html/index.html