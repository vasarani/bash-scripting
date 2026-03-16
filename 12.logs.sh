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
      echo "$2.... FAILURE"
      exit 1
    else
      echo "$2.... SUCCESS"  
    fi 
}

echo "Installing Nginx" 
dnf install nginx -y &>> $logs_file
VALIDATE $? "Installing Nginx"

echo "Installing MYSQL"
dnf install mysql -y &>> $logs_file
VALIDATE $? "Installing MYSQL"

echo "Installing nodejs"
dnf install nodejs -y &>> $logs_file
VALIDATE $? "Installing nodejs"