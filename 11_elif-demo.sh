#!/bin/bash

read -p "Enter your marks: " marks
echo "$marks"

if [[ $marks -ge 80 ]]
then
	echo "1st division"

elif [[ $marks -ge 60 ]]
then
	echo "2nd Division"


elif [[ $marks -ge 40 ]]
then
	echo "3rd Division"
else 
	echo "Your are fail"
fi
