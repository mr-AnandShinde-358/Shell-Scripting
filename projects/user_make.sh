#!/bin/bash

#1] Script should be execute with sudo/root access.

if [[ "${UID}" -ne 0 ]]
then
	echo " Please run with sudo or root"
	exit 1
fi


#2] User should provide atleast one argument as username else guide him

if [[ "${#}" -lt 1 ]]
then
	echo " Usage: ${0}  USER_NAME [COMMENT]..."
	echo "Create a user with name USER_NAME and Comments field of COMMENT"
	exit 1
fi


#3] Store 1st argument as user name

USER_NAME="${1}"

#4] In case of more than one argument, store it as account comments.
shift
COMMENT="${@}"

#5] Create a password.

PASSWORD=$(date +%s%N)
#echo "$PASSWORD"

#6] Create a user

useradd -c "${COMMENT}" -m $USER_NAME 


#7] Check if user is successfully created or not

if [[ $? -ne 0 ]]
then
	echo 'The Account could not be created'
	exit 1
fi


#8] Set the password for the user

# passwd $PASSWORD $USER_NAME 

echo $PASSWORD | passwd --stdin $USER_NAME

#9] Check if password is successfully set or not

if [[ $? -ne 0 ]]
then
	echo 'Password could not be set'
	exit 1
fi

#10] Force password change on first login.

passwd -e $USER_NAME

#11] Display the username, password, and the host where the user was created . 


echo 
echo "Username: $USER_NAME" 
echo 
echo "Password: $PASSWORD"
echo 
echo "HostName: $(hostname)"
