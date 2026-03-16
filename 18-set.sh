#!/bin/bash

set -e # this will be checking for errors, if errors it will exit

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

userid=$(id -u)
logs_folder="/var/log/bash-scripting"
logs_file="/var/log/bash-scripting/$0.logs"

if [ $userid -ne 0 ]; then
  echo -e "$R Please run this script with the root user access $N"
  exit 1
fi 
mkdir -p $logs_folder
VALIDATE(){
    if [ $1 -ne 0 ]; then
      echo -e "$2.... $R FAILURE $N" |tee -a $logs_file
    else
      echo "$2.... $R SUCCESS $N"  |tee -a $logs_file
    fi 
}


for package in $@ # sudo sh file_name nginx nodejs mysql
do 
  dnf list installed $package &>> $logs_file
  if [ $? -ne 0 ]; then
    echo "$package not installed, installing now"
    dnf install $package -y &>> $logs_file
    # VALIDATE $? "$package  Installed"
  else
    echo -e "$package already installed, $Y Skipping $N"
  fi     
done  