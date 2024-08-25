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

```
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

```
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

```
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


```
readonly var_name="Hi"

```

</details>

<details>
<summary> ARRAYS </summary>

```
#How to define an array? # space separated value provide to array

myArray=(1 2 Hello "Hey man")

# How to get values from an array?

echo "${myArray[0]}"
echo "${myArray[1]}"

```

</details>

<details>
<summary> How to get length of array? </summary>

```
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

```
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

```
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