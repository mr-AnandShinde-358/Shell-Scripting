#i/bin/bash

while IFS=";" read id name age
do
	echo "id is $id"
	echo "name is $name"
	echo "age is $age"
done < test.csv

while IFS=";" read Username Identifier Firstname Lastname
do
	echo "username is $Username"
	echo "Identifier is $Identifier"
	echo "Firstname is $Firstname"
	echo "Lastname is $Lastname"
done < username.csv


cat test.csv | awk 'NR!=1 {print}' | while IFS=";" read id name age
do 
	echo "Id is $id"
	#echo "name is $name"
	#echo "age is $age"
done

