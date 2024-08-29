#!/bin/bash
# Monitoring free DISK space and sent an Alert Email

FU=$(df -H |egrep -v "Filesystem|tmpfs" | grep "sda2" | awk '{print $5}' |tr -d %)
NE=$(df -H | egrep -v 'Filesystem|tmpfs' | grep "sda2" | awk '{print $5}' | tr -d %)

TO="anand1801160123@gmail.com"
echo "percent $NE $FU "

if [[ $FU -ge 15 ]]
then
	echo "Warning, disk space is low - $FU %" | mail -s "DISK SPACE ALERT !" $TO  
else
	echo "All good $FU"
fi	
