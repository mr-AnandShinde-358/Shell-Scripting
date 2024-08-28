#!/bin/bash

set -x

#to access the arguments

#exit : usege of exits keyword on script 

if [[ $# -eq 0 ]]
then
	echo "Please provide atleast one argument"
	exit 1
fi


echo "First argument is $1"
echo "Second argument is $2"

echo "All the argument are - $@"
echo "Number of arguments are - $#"

# for loop to access the values from arguments

for filename in $@
do 
	echo "coppyting file - $filename"
done
