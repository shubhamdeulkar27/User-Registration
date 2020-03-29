#!/bin/bash -x

#TAKING INPUTS
read -p "Enter First Name :  " firstName
read -p "Enter Last Name : " lastName
read -p "Enter Email Id : " email
read -p "Enter Mobile Number : " mobileNumber
read -p "Enter Password : " password

#FUNCTION TO VALIDATE NAME
function checkName(){
	patternName="([A-Z]{1}[a-z]{2})"
	if [[ $1 =~ $patternName ]] && [[ $2 =~ $patternName ]]
	then
		echo "Valid Name"
	else
		echo "Invalid Name"
	fi
}

#FUNCTION TO VALIDATE EMAIL ID
function checkEmail(){
	patternEmail="abc((\.[A-Z]+[a-z]*[0-9]*)|(\.[A-Z]*[a-z]+[0-9]*)|(\.[A-Z]*[a-z]*[0-9]+)|^)?@bl\.co(\.[a-z]+){1,}"
	if [[ $1 =~ $patternEmai ]]
	then
		echo "Valid Email Id"
	else
		echo "Invalid Email Id"
	fi
}

#FUNCTION TO VALIDATE MOBILE NUMBER
function checkMobileNumber(){
	patternMobileNumber="^([0-9]{2}[ ]{1}[0-9]{10})$"
	if [[ $1 =~ $patternMobileNumber ]]
	then
		echo "Valid Mobile Number"
	else
		echo "Invalid Mobile Number"
	fi
}

#FUNCTION TO VALIDATE PASSWORD
function checkPassword(){
	patternPassword="(.*[A-Z])+(\w){7,}"
	if [[ $1 =~ $patternPassword ]]
	then
		echo "Valid Password"
	else
		echo "Invalid Password"
	fi
}

checkName $firstName $lastName
checkEmail "$email"
checkMobileNumber "$mobileNumber"
checkPassword "$password"
