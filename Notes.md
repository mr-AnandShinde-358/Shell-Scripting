# Shell Scripting

<details>
<summary>What is Linux Shell</summary>
A shell provide on environment to a user to execute commands and interact with kernel
</details>

<details>
<summary>There are different of shell </summary>
 showing all shell cmd: cat /etc/shells  
.bash
.sh
.ksh
.tsh
.fish
.zsh
</details>

<details>
<summary> What is my shell type? </summary>
you can check using 

```shell
echo $0

```

</details>

<details>
<summary> What is Shell Scripting? </summary>
1] Shell script consist of set of commands of perform a task. 
2] All the commands execute sequentially.
3]Same task like file manipulation, program executin, user interaction, automation of task etc can be done.
</details>

<details>
<summary> First Basic Script </summary>

```shell
#!/bin/bash
echo "hellow world!"

```


</details>

<details>
<summary>What is Shebang?</summary>
#!/bin/bash
</details>

<details>
<summary> Sending output to terminal </summary>

```shell
echo "Hellow world!"

```
</details>


<details>
<summary> How to run a script </summary>
1] Make sure script has execute permission rwx
2] Run using 
./script.sh
/path/script.sh
bash script.sh
3] ctrl+c to terminate
4] ctrl+z to stop
</details>

<details>
<summary> Comments </summary>

Using #
#This is comment

MUlti-line comment
<<commnet

Your comment here
comment

</details>


<details>
<summary> What are variables? </summary>
VAR_NAME = value
VAR_NAME = $(hostname)
echo $VAR_NAME
</details>

<details>
<summary> Constant Variable? </summary>
Once you defined a variable and don't wanna change it until end of the script.


```shell
readonly var_name="Hi"

```

</details>

<details>
<summary> ARRAYS </summary>

```shell
#How to define an array? # space separated value provide to array

myArray=(1 2 Hello "Hey man")

# How to get values from an array?

echo "${myArray[0]}"
echo "${myArray[1]}"

```

</details>

<details>
<summary> How to get length of array? </summary>

```shell
echo "${#myArray[*]}"

# How to get specific values?

echo "${myArray[*]:1}"
echo "${myArray[*]:1:2}"

```
</details>

<details>
<summary> How to update an array? </summary>
myArray +=( 5 6 8 )
</details>

<details>
<summary> Arrays key-values </summary>
declare -A myArray
myArray=( [name]=Paul [age]=20)
echo "${myArray[name]}"

</details>

## String Operations

<details>
<summary> String Operations </summary>

```shell
myVar = "Hello World!"
length=${#myVar}
upper=${X^^}
lower=${y,,}
replace=${myVar/world/Buddy}
slice=${myVar:6:11}

#when you use sclling first variable:where is start sliceing: how many characters after starting

```

</details>

## User Interaction

<details>
<summary> TAKING INPUT FROM USER </summary>

```shell
read <var_name>
read -p "Your name" NAME # you can direct provide message using this not need echo

```


</details>

<details>
<summary> When you want delete line on vim  </summary>
1] press Esc
2]go to your cursor you want delele line first character of this line
3] press dd (two time d press)
4] you can see this line was deleted
</details>

## Arithmetic Operations

<details>
<summary> HOW TO USE EXPRESSIONS </summary>

```shell
#using let command

let a++
let a=5*10

((a++))
((a=5*10))

```

</details>

## Conditional Statement

<details>
<summary> IF-ELSE </summary>


```shell
if[$marks -gt 40]
then
    echo "You are PASS"
else
    echo "You are FAIL"
fi

```

</details>

<details>
<summary> OPERATORS </summary>

<table>
  <tr>
    <th>OperatorName</th>
    <th>Symbol</th>
  </tr>
  <tr>
    <td>Equal</td>
    <td>-eq/==</td>
  </tr>
  <tr>
    <td>Greaterthanorequalto</td>
    <td>-ge</td>
  </tr>
  <tr>
    <td>Lessthanorequalto</td>
    <td>-le</td>
  </tr>
  <tr>
    <td>Not Equal</td>
    <td>-ne/!=</td>
  </tr>
  <tr>
    <td>Greater Than</td>
    <td>-gt</td>
  </tr>
  <tr>
    <td>Less Than</td>
    <td>-lt</td>
  </tr>
</table>

</details>


<details>
<summary> ELIF </summary>


```shell
if [ $marks -ge 80 ]
then 
     
     echo "First Division"
elif[ $marks -ge 60 ]
then 
    echo "Second Division"
else 
    echo "Fail"
fi
```


</details>


<details>
<summary> CASE </summary>

```shell
echo "Hey choose an option"
echo "a = To see the current date"
echo "b = list all the files in current dir"

read choice

case $choice in
    a) date;;
    b) ls;;
    *) echo "Non a valid input"
esac

```

</details>


## Logical Operators &&,||,!

<details>
<summary> Logical Operators </summary>

```shell
condition1 && condition2
if both conditions are true then true else false

```


```shell
condition1 || condition2

if any of the condition is true then true

```


```shell
condition1 && condition2 || condition3

Execute condition2 only when condition1 is true else execute condtion3

```


### when you can comparision two string to each order use '==' for equal check not use 'eq' this for only numberical


</details>

## Loops

<details>
<summary> For Loop </summary>

```shell
for i in 1 2 3 4 5
do 
      each "Number is $i"
done

# Other ways to write for loop

for j in Raju Sham Baburao

for p in {1..20}

```
</details>

<details>
<summary> Iterate Value From File </summary>

```shell
items ="/home/paul/file.txt"

for item in $(cat $items)
do 
echo $item
done
```

</details>

<details>
<summary> While Loop </summary>

```shell
count = 0
num = 10
while [ $count -le $num ]
do  
      echo "Number are $count"
      let count++
done

```

</details>

<details>
<summary> Until Loop </summary>

```shell
# until : jab tak ye condition false rahegi ya jab tak true nahi ho jati tab tak loop chalata rahega
a=10
until [ $a -eq 1 ]
do 
  echo $a
  a=`expr $a -1'
done

```

</details>

<details>
<summary> Infinite Loop </summary>


```shell
while true
do 
    echo "Hi"
    sleep 2s
done

```

</details>

<details>
<summary> While Loop </summary>

### To read content from a file

```shell

while read myVar
do 
      echo $myVar
done < file_name

```

### To read content from a csv file


```shell

while IFS="," read f1 f2 f3
do
    echo $f1
    echo $f2
    echo $f3
done < file_name.csv

```

</details>


<details>
<summary> What are functions? </summary>
1] Block of code which perform some task and run when it is called. <br>
2] Can be reuse many times in our program which lessen our lines of code. <br>
3] We can pass arguments to the method<br>
</details>

<details>
<summary> How to make Fucntions? </summary>

```shell
function myfun {
  echo "HI"
}

myFun(){
  echo "Hello"
}

----------------------------
To call the funcation

myfun

```

</details> 

<details>
<summary> How to use arguments in functions? </summary>


```shell
addition() {
  local num1=$1
  local num2=$2
  let sum = $num1+$num2
echo "Sum of $num1 and $num2 is $sum"
}
-------------
myfun 12 13
```

</details>

