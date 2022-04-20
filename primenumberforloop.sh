#!/bin/bash

read -p "Enter a number : " num

for((i=2;i<=$num/2;i++))
do
	ans=$((n%i))

	if [ $ans -eq 0 ]
	then
			echo "$n is not a prime number"
	exit
	fi
done

echo "$n is a prime number."
