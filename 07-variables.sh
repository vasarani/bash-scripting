#!/bin/bash

#### Special variables ####
echo "All args passed to script: $@"
echo "Number od vars passed to script: $#"
echo "Script name: $0"
echo "Present diresctory: $PWD"
echo "Who is running: $USER"
echo "Home directory of the current user: $HOME"
echo "PID of this script: $$"
sleep 20
echo "PID od recently excuted background process: $!"
echo "All args passed to script: $*"