#!/bin/bash

# This script takes user inputs and performs math operation on them

read -p "Enter your name: " name

echo "Welcome $name"

read -p "Enter your 1st number: " num1
read -p "Enter your 2nd number: " num2

echo "The addition of the two number is: `expr $num1 + $num2`"
echo "The subtraction of the two number is: `expr $num1 - $num2`"
echo "The mulitplication of the two number is: `expr ($num1 \* $num2)`"
echo "The division of the two number is: `expr $num1/ $num2`"
