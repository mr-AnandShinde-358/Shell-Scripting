#!/bin/bash

#FILEPATH='/media/anand/"New Volume"/programing/DevOps/"Shell Scripting"/test.txt'

FILEPATH='/home/anand/Desktop/anand/DevOps/prashant.txt'
DIRECTORY='/home/anand/Desktop/anand/DevOps'

# -f : for file exist ! -f file not exits
if [[  -f $FILEPATH ]]
then
	echo "File exist"
else
	echo "File not exist"
	
fi

# -d : for folder exist !-d for folder not exits

if [[ -d $DIRECTORY ]]
then
	echo "Directory exist"
else
	echo "Directory not exist"
	exit 1
fi

# if file not exists then creating new file

if [[ ! -f $FILEPATH ]]
then 
	echo "creating new file"
	touch $FILEPATH
fi



