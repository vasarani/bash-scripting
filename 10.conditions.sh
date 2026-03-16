#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]; then
  echo "Please run this script with root user access"
  exit 1
fi

echo "Installing Nginx"
dnf install nginx -y  
if [ $? -ne 0 ]; then
  echo "Installing Nginx... FAILURE"
else
   echo "Installing Nginx... SUCCESS" 
fi   

echo "Installing MYSQL"
dnf install mysql -y
if [ $? -ne 0 ]; then 
  echo "Installing mysql... FAILURE"
else
  echo "Installing mysql... SUCCESS"
fi

echo "Installing Nodq.Js"
dnf install node.js -y
if [ $? -ne 0 ]; then
  echo "Installing Node.js... FAILURE"
else
  echo "Installing Node.js... SUCCESS"
fi

