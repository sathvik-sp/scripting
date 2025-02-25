#!/bin/bash

read -p "Enter the number: " NUM
echo

if [ $NUM -gt 100 ]
then 
	echo "we have entered in IF block."
	sleep 3
	echo "Your number is greater than 100"
	echo
	date
fi
	
