#!/bin/bash

echo "########################################"
date
sudo ls /var/run/httpd/httpd.pid &> /dev/null

if [ $? -eq 0 ]
then 
    echo "Httpd process is running"
else 
    echo "Httpd process is Not running"
    echo "Starting the process"
    sudo systemctl start httpd

    if [ $? -eq 0 ]
    then 
        echo "process started Successfully"
    else
        echo "Process stating failed, Contact the admin"
    fi 
fi
echo "########################################"
echo 
