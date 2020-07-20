#!/bin/bash

mylogger () {
	local MESSAGE=$@
	if [ ! -z ${MESSAGE} ]
	then
		echo "${MESSAGE} was saved to /var/log/messages. "
		logger -i -t randomlog -p local0.info ${MESSAGE}
		exit 0
	else
		echo "Nothing to log"
		exit 2
		fi
}

mylogger $@ 
