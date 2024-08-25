#!/bin/bash

#Maths Calculation
x=10
y=2

let  mul=$x*$y
let sum=$x+$y
echo "multi is $mul"
echo "sum is $sum"

sub="$(($x-$y))"
echo "subtraction is using variable  $sub"
echo "direct sub using (()) $(($x-$y))"
