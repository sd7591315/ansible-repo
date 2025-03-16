#!/bin/bash

###############################

# Author : Sumit Deshmukh
# Created: 12 /01/2025
#Desciption:  Check Node Health
# Version v1.1
###############################

set -x # debug mode
set -e #stop excution of script if errror occures
set -o pipefail # stop excution if error occured in pipline
#adsjsadgsahg | echo

#echo "Display disk Space"

df -h

#echo "Display meomory"

free

#echo "Display CPU"

nproc

#ps -ef | grep kworker | awk -F " " '{print $2}'
