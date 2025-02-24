#!/bin/bash

### Hosting a website###

# installing wget,unzip, httpd
echo "############################################"
echo "installing wget,unzip, httpd"
sudo yum install wget unzip httpd -y
echo

echo "############################################"
echo "createing and getting inside a temp directory"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

echo "############################################"
echo "downloading the template, unziping it and copy it to /var/www/html"
wget https://www.tooplate.com/zip-templates/2129_crispy_kitchen.zip > /dev/null
unzip 2129_crispy_kitchen.zip > /dev/null
sudo cp -r 2129_crispy_kitchen/* /var/www/html/
echo

echo "############################################"
echo "restating httpd"
sudo systemctl restart httpd
echo

echo "############################################"
echo "remove tempe directory and files"
rm -rf /tmp/webfiles
echo

echo "############################################"
echo "checking httpd status"
sudo systemctl status httpd
echo

echo "############################################"
echo "listing the content of /var/www/html"
ls /var/www/html


