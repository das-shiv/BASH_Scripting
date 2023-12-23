#!/bin/bash

# This script runs a countdown clock

read -p "Enter your countdown value: " count

while [ $count -gt 0 ]
do
	echo $count
	sleep 1
	count=$(( $count-1))
done

echo "Times up"
