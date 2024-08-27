#!/bin/bash

#to access the arguments

echo "First argument is $1"
echo "Second argument is $2"

echo "All the argument are - $@"
echo "Number of arguments are - $#"

# for loop to access the values from arguments

for filename in $@
do 
	echo "coppyting file - $filename"
done
