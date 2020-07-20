#!/bin/bash

read -p "How many lines of /etc/passwd would you like to see? " SHOW_LINES

LINE_NUM=1
((SHOW_LINES++))


while [ ${LINE_NUM} -lt ${SHOW_LINES}  ]
do 
	read LINE 
	echo "${LINE_NUM}: ${LINE}"
	((LINE_NUM++))
done < /etc/passwd
