#!/bin/bash

Myusers='alpha beta gamma'

for usr in $Myusers
do
    echo "Adding user $usr"
    sudo useradd $usr
    id $usr
    echo "##########################"
    echo
done