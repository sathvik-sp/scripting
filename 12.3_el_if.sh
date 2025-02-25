#!/bin/bash

value=$( ip addr show | grep -v LOOPBACK | grep -ic mtu )

if [ $value -eq 0 ]
then 
    echo "there are no active network interface"
elif [ $value -gt 0 ]
then 
    echo "Found one active interface"
else 
    echo "Found multiple active interface"
fi