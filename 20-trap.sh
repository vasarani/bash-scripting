#!/bin/bash

set -e # this will be checking for errors, if errors it will exit

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

set -e
trap 'echo "there is an error in $LINENO, command: $BASH_COMMAND"' ERR
userid=$(id -u)
logs_folder="/var/log/bash-scripting"
logs_file="/var/log/bash-scripting/$0.logs"

if [ $userid -ne 0 ]; then
  echo -e "$R Please run this script with the root user access $N"
  exit 1
fi 
mkdir -p $logs_folder


for package in $@ # sudo sh file_name nginx nodejs mysql
do 
  dnf list installed $package &>> $logs_file
  if [ $? -ne 0 ]; then
    echo "$package not installed, installing now"
    dnf install $package -y &>> $logs_file
  else
    echo -e "$package already installed, $Y Skipping $N"
  fi     
done  