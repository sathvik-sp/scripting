#!/bin/bash

###This scipt prints system info###

echo "welcome to bash script"
echo

#checking system uptime
echo "############################################"
echo "the up time of this system is: "
uptime
echo

#disk utilization
echo "####################################################"
echo "disk uitlization"
df -h
echo 

#memory utilization
echo "############################################################"
echo "memory utilizatio"
free -m


