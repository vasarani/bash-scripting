#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]; then
  echo "Please run this script with root user access"
  exit 1
fi

echo "Installing Nginx"
dnf install nginxx -y  
if [ $? -ne 0 ]; then
  echo "Installing Nginx... FAILURE"
else
   echo "Installing Nginx... SUCCESS" 
fi   