#!/bin/bash

factorial() {
	local num=$1
	local result=1

	for(( i = 1; i <= num; i++ ))
	do
		result=$((result * i))
	done

	echo $result
}

echo "Enter number : "
read number

fact=$(factorial $number)
echo "Factorial of $number is $fact"
