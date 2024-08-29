#!/bin/bash

# project 1: Monitoring Free Ram Space

FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
TH=500
if [[ $FREE_SPACE -lt $TH ]]
then
	echo "WARNING, RAM IS RUNNIG LOW - $FREE_SPACE"
else
	echo "RAM Space is sufficient - $FREE_SPACE"
fi
