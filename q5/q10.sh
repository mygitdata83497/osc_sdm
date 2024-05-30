#!/bin/bash

fibonacci() {
	local n=$1
	local a=0
	local b=1
	local count=0

	echo -n "$a $b"

	while [ $count -lt $((n-2)) ]
	do
		local next=$((a+b))
		echo -n "$next"
		a=$b
		b=$next
		count=$((count + 1))
	done
echo ""
}
echo "Enter the numbers in series :  "
read nums

echo "FIbonacci series :"
fibonacci nums
