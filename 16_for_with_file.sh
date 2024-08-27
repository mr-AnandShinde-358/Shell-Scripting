#!/bin/bash

#Getteing values from a file name.txt

#FILE="/media/anand/New Volume/programing/DevOps/Shell Scripting/names.txt"
FILE='/home/anand/Desktop/anand/DevOps/names.txt'
for name in $(cat $FILE)
do
	echo "Name is $name"
done

