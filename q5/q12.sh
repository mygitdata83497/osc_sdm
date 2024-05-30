#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Usage : $0 <filename>"
exit 1
fi

filename=$1

if [ -e "$filename" ]
then
	mod_time=$(date -r "$filename" +"%F %T")
	echo "Last modification time of $filename : $mod_time"
else
	echo "File does not exist"
fi	
