#!/bin/bash -x

#TAKING INPUT
read -p "Enter First Name :  " firstName

patternFirstName="([A-Z]{1}[a-z]{2})"

if [[ $firstName =~ $patternFirstName ]]
then
	echo "Valid"
else
	echo "Invalid"
fi
