#!/bin/bash

DATE=$(date +%F)


read -p "Please enter a file extension: " EXTENSION
read -p "Please enter a file prefix:  (Press ENTER for ${DATE}). " PREFIX

if [ -z ${PREFIX}]
then
	PREFIX=${DATE}
fi

if [ -e *.${EXTENSION} ]
then
	
	for FILE in *.${EXTENSION}
	do
		NEWFILE=${PREFIX}-${FILE}	
		echo "Renaming ${FILE} to ${NEWFILE}."
		mv ${FILE} ${NEWFILE}
	done
exit 0
else
	echo "No .${EXTENSION} files found."
exit 1
fi
