#!/bin/bash
echo "###################################################"
echo "Welcome $USER on $HOSTNAME"
Freeram=$(free -m | grep Mem | awk '{print $4}')
Load=$(uptime | awk '{print $9}')
Rootfree=$(df -h | grep -w '/dev/xvda1' |awk '{print $4}')
echo 
echo "###################################################"
echo "Available free Ram is $Freeram MB"
echo
echo "###################################################"
echo "Curent Load Average $Load"
echo
echo "###################################################"
echo "Free ROOT partiotion size is $Rootfree"

