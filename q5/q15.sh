#!/bin/bash

if [ $# -ne 2 ]
then
	echo "Usage : $0 <input_file> <output_file>"
	exit 1
fi

input_file=$1
output_file=$2

if [ ! -f "$input_file" ]
then
	echo "Input file not found!"
	exit 1
fi

rev=$(tr '[:upper:][:lower:]' '[:lower:][:upper:]' < "$input_file")

echo "rev" >> "$output_file"

echo "Contents appended in reverse case"
