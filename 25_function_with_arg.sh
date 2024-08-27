#!/bin/bash


function welcome {
	echo "-------------"
	echo "welcome $1"
	echo "Age is $2"
	echo "-------------"
}

welcome Raju 20
welcome Sham 21

sum() {
	read -p "Please enter your lucky numbers: " number
	echo "congo! you wining $number 000"

}

sum 
