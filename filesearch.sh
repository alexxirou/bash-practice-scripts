#!/bin/bash


for FILE in $@
do

if [ -f ${FILE} ]
then 
echo ${FILE} " is a regular file"
elif [ -d ${FILE} ]
then
echo ${FILE} " is a directory"
else
echo ${FILE} " is not a regular file or a directory"
fi
ls -l ${FILE} 
done
