#!/bin/bash

myVar="Hey Buddy, How are you?"

myVarLength=${#myVar}

echo "Length of the myVar is $myVarLength"

echo "Upper case is ------ ${myVar^^}"
echo "Lower case is ----- ${myVar,,}"
# To replace a string
newVar=${myVar/Buddy/Maddy}
echo "replace world Buddy to Maddy ----- $newVar"

#To slice a string 

world=${myVar:4:5}
# when you use sclling first variable:where to start scliing:how many caracter after starting
echo "After slice  $world"
