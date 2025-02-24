#!/bin/bash

### Hosting a website###


#Variables Declerations
package="httpd wget unzip"
svc="httpd"
url="https://www.tooplate.com/zip-templates/2129_crispy_kitchen.zip"
artName="2129_crispy_kitchen"
tempDir="/tmp/webfiles"


# installing wget,unzip, httpd
echo "############################################"
echo "installing wget,unzip, httpd"
sudo yum install $package -y
echo

echo "############################################"
echo "createing and getting inside a temp directory"
mkdir -p $tempDir
cd $tempDir
echo

echo "############################################"
echo "downloading the template, unziping it and copy it to /var/www/html"
wget url > /dev/null
unzip $artName.zip > /dev/null
sudo cp -r $artName/* /var/www/html/
echo

echo "############################################"
echo "restating httpd"
sudo systemctl restart $svc
echo

echo "############################################"
echo "remove tempe directory and files"
rm -rf $tempDir
echo

echo "############################################"
echo "checking httpd status"
sudo systemctl status $svc
echo

echo "############################################"
echo "listing the content of /var/www/html"
ls /var/www/html


