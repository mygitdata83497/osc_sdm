#!/bin/bash

echo "Enter Number :"
read number

is_prime() {
num=$1
if [ $num -lt 2 ]
then
return1
fi

for(( i = 2; i <= $num / 2; i++));
do
if [ $((num % i)) -eq 0]; 
then
echo "$num is not a prime number"
return
fi
done
echo "$num is prime number"
}

is_prime $number







