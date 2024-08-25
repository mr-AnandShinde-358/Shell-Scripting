#!/bin/bash
#Array

myArray=( 1 20 30.4 Hello "Hey Buddy!" ) 
# * : when you want print all value
echo "All the values in array are ${myArray[*]}"
echo "value in 3rd indix  ${myArray[3]}"

# HOw to find no . of value in an array
echo "length of arrays  ${#myArray[*]}"

echo "all value print after first index ${myArray[*]:1}"

echo "value from index 2 after 2 value ${myArray[*]:2:2}" 

myArray+=( 5 6 8 )
echo "print all value after updation ${myArray[*]}"
