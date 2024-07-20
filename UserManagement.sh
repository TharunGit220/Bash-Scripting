#!/bin/bash

#Script should only be executed root users
if [ $UID != 1000 ] 
then	
	echo "You Haven't got root previlages"
	exit 1
fi

# User should pass atlest one argument as a username else I guide them
if (( $# == 0 ))
then	
	echo "when running this $0 file you must pass a Username as an argument and any comments if necessary"
	exit 1
fi

#Print the username
username=$1
echo "Here is you username $username"
shift 1

#Print the additional Comments
if (( $# > 0 ))
then
	echo "Additional comments $@"
else
	echo "No comments for you mate"
fi 

#Create a password 
password=$(date +%s%N)
echo "Here is your password  $password"


#Creating a user 

sudo useradd -m $username -s /bin/bash

#Check if the user has been successfully created 

if [ $? == 0 ]
then
	echo "User $username" has been successfully created
else
	echo "Unable to create the user try again "
	exit 1
fi

#Set the password for the user's account 
echo "$username:$password" | sudo chpasswd

# To check if the password has been succesfully set 

if [ $? == 0 ]
then	
	echo "password successfully set"
else
	echo "Error password not set try again"
	exit 1
fi

# Force password change on first login
#passwd -e $username

#Urger the user to change the password 

read -sp "time to change the default password enter a password " newpassword 

echo $username:$newpassword | sudo chpasswd

 if [ $? == 0 ]
  then
      echo "Personal password successfully set"
  else
      echo "Error password not set try again"
      exit 1
  fi

#Final Display of all the information 
echo "*******************************************"
echo "Final set of information "

echo "your username is $username and your password is $newpassword"















