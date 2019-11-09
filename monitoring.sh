#!/bin/bash

# Update interval
INT=5

while(true)
do
	# Last 15 journal strings
	tail -n 15 $1
	# Wait
	sleep #INT
	echo; echo
done
