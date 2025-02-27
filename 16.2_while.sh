#!/bin/bash

counter=1

while true
do
    echo "Looping..."
    echo "Value of counter is $counter "
    counter=$(($counter *2))    
    sleep 1
done

echo "out of the loop"