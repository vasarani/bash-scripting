#!/bin/bash

userid=$(id -u)
logs_folder="/var/log/bash-scripting"
logs_file="/var/log/bash-scripting/$0.logs"

if [ $userid -ne 0 ]; then
  echo "Please run this script with the root user access"
  exit 1
fi 
mkdir -p $logs_folder
VALIDATE(){
    if [ $1 -ne 0 ]; then
      echo "$2.... FAILURE" |tee -a $logs_file
    else
      echo "$2.... SUCCESS"  |tee -a $logs_file
    fi 
}


for package in $@ # sudo sh file_name nginx nodejs mysql
do 
  echo "Installing $package"
  dnf install $package -y &>> $logs_file
  VALIDATE $? "$package  Installed"
done  