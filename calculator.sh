#!/bin/bash

echo "Welcome to Shell scripting calculator"

read -p "Enter your first number: " num1
read -p "Enter your second number: " num2

add() {
	local num1=$1
	local num2=$2
	let sum=$num1+$num2
	echo "addition of $num1 and $num2 is $sum"
}

sub() {
	local num1=$1
	local num2=$2
	let sub=$num1-$num2
	echo "subtraction of $num1 and $num2 is $sub"
}

function mul {
	local num1=$1
	local num2=$2
	let mul=$num1*$num2
	echo "subtraction of $num1 and $num2 is $mul"
}

function div {
	local num1=$1
	local num2=$2
	let div=$num1/$num2
	echo "divide of $num1 and $num2 is $div"
}

echo "Hey choose an option"
echo "a : Addition"
echo "b : Subtract"
echo "c : multiple"
echo "d : division"

read choice

case $choice in 
	a) 
		add $num1 $num2 
		;;
	b) sub $num1 $num2;;
	c) mul $num1 $num2;;
	d) div $num1 $num2;;
	*)
		echo "Please choice valid choice"
esac


