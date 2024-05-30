#!/bin/bash

echo "Enter the year : "
read year

if [ $((year % 4)) -eq 0 ]
then
if [ $((year % 100)) -eq 0 ] && [ $((year % 400)) -ne 0 ]
then
echo "$year is not leap year!"
else 
echo "$year is a leap year"
fi
else
echo "$year is not a leap year"
fi
