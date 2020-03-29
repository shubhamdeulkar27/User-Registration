#!/bin/bash -x

#TAKING INPUTS
read -p "Enter First Name :  " firstName
read -p "Enter Last Name : " lastName

function checkName(){
	patternName="([A-Z]{1}[a-z]{2})"
	if [[ $1 =~ $patternName ]] && [[ $2 =~ $patternName ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}

checkName $firstName $lastName
