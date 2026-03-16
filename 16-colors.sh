#!/bin/bash

# '\e[0m'   --> WHITE
# '\e[31m'  --> RED
# '\e[32m'  --> GREEN
# '\e[33m'  --> YELLOW
# '\e[34m'  --> BLUE

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

echo -e "$R Hello World $N, $Y I am learning Linux $N"



