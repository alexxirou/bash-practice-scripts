#!/bin/bash

DIRECTORY=$1
file_count() {
	local NUMBER_OF_FILES=$(ls ${DIRECTORY} | wc -l)
	echo "${DIRECTORY}: "
	echo "$NUMBER_OF_FILES"
}

file_count 
