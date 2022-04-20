#!/bin/bash

read -p "Enter a number :" x

for ((i=2;i<=$x/2;i++))
do
		a=$((x%i))
		if [ $a -eq 0 ]
		then
			echo "The number is not prime."
		exit
		fi
	done
			echo "The number is prime."





