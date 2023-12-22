#!/bin/bash

# This script shows the use of variables in BASH scripting

name="SHIV"
date=$(date)

echo "Hello $name"
echo "The current time and date is:"
echo $date

echo "Your username on current session is $USER"
