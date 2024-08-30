#!/bin/bash
#$Revision:001$
#$Fri Aug 30 11:05:35 IST 2024

#Variables
#BASE=/media/anand/'New Volume'/programing/DevOps/'Shell Scripting'/find_command
#BASE= "/media/anand/'New Volume'/programing/DevOps/'Shell Scripting'/find_command/"
BASE="/media/anand/New Volume/programing/DevOps/Shell Scripting/find_command"
DAYS=10
DEPTH=1
RUN=0

#check if the directory is present or not
if [[ ! -d "$BASE" ]]
then
	echo "directory does not exist: $BASE"
	exit 1
else
	echo "direactory exits"
fi

#Create 'archive' folder if not present

if [[ ! -d "$BASE/archive" ]]
then
	mkdir "$BASE/archive"
	echo "created folder successfuly"
else

	echo "folder alredy exits"
fi


#find the list of files larget than 20MB

#for i in `find "$BASE" -maxdepth $DEPTH -type f -size +20M`
#do
#	if [[ $RUN -eq 0 ]]
#	then
#		echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==>'$BASE/archive' "
#		gzip $i || exit 1
#		mv "$i.gz" "$BASE/archive" || exit 1
#	fi
#done


# Find the list of files larger than 20MB
find "$BASE" -maxdepth $DEPTH -type f -size +20M | while IFS= read -r i; do
    if [[ $RUN -eq 0 ]]; then
        echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> '$BASE/archive'"
        gzip "$i" || exit 1
        mv "$i.gz" "$BASE/archive" || exit 1
    fi
done
