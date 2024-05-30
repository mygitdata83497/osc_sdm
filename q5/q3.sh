#!/bin/bash

echo "Enter a file or directory name : "
read name

if [-f "$name"]
then
echo "$name is a file!"
echo "Size of $name : `du -h "$name" | cut -f1`"

elif [-d "$name"]
then
echo "$name is a directory"
echo "Contents of $name"
ls "$name"
else
echo "$name is not a file or directory"
