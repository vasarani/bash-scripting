#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]; then
  echo "Please run this script with the root user access"
  exit 1
fi

VALIDATE(){
  if [ $1 -ne 0 ]; then
     echo "$2... FAILURE"
     exit 1
  else
     echo "$2.. SUCCESS"
 fi
}

echo "Installing Nginx"
dnf install nginx -y
VALIDATE $? "Installing Nginx"

echo "Installing MYSQL"
dnf install mysql -y
VALIDATE $? "Installing MYSQL"

echo "Installing nodejs"
dnf install nodejs -y
VALIDATE $? "Installing nodejs"