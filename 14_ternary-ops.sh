#!/bin/bash
#cond1 && cond2 || cond3
# condition2 execute only when condition1 is true else condition 3 execute

age=15

[[ $age -ge 18 ]] && echo "Adulte" || echo "Minor"
