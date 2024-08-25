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