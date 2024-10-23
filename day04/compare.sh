#!/bin/bash

read -p "Enter first number: " a

read -p "Enter second number: " b

if [[ $b -gt $a ]];
then
	echo "$b is greater than $a"
elif [[ $a -gt $b ]];
then
	echo "$a is greater than $b"
else 
	echo "Both are equal"
fi

