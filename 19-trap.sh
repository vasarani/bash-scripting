#!/bin/bash

set -e

trap 'echo "There is an error in $lineno, command: $bash_command"' ERR
echo "Hello world"
echo "I am learning Shell"
echoo "Printing error here"
echo " No error in this " 