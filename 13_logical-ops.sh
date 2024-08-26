#!/bin/bash

#AND Operator

read -p "What is your age?" age
read -p "Your country: " country

# con1 ||con2 only one condition true execute block
if [[ $age -ge 18 ]] && [[ $country == "India" ]]
then
	echo "You can vote"
else
	echo "You can't vote"
fi
