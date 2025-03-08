#!/bin/bash

######################################

# Author: Sumit Deshmukh
# Discription: Serach pattern in file
# Date: 14 Jan 25
# Version: v1.1

#####################################

log_file="$1"
pattern="$2"
line_before="$3"
line_after="$4"

if [[ ! -f "$log_file" ]]; then
	echo "File not found!"
	exit 1
fi

if [[ -z "$pattern" ]]; then
	echo "Please provide serach Pattern"
	exit 1
fi

line_before=${line_before:-1}
line_after=${line_after:-1}
#use above details to grep the details

grep -B "$line_before" -A "$line_after" "$pattern" "$log_file" -C1 | sort > log.txt


####################################
#practice purpose

Additon=a+b
