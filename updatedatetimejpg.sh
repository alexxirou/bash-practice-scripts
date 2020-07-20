#!/bin/bash
#Script to update jpg files with the  current date.

DATE=$(date +%F)

if [ -e *.jpg ]
then 
	for FILE in *.jpg
	do
		mv ${FILE}  ${DATE}-${FILE}
		echo "${FILE} was renamed."
	done
exit 0
else 
  	echo "No jpg files in this directory"
	exit 1
fi
