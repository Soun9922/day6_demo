#!/bin/bash

read -p "Enter the number to print the harmonic number : " h

	for((i=1;i<=$h;i++))
	do
		if [ i -lt $h ]
		then
				s=$((s+1/i))
					echo "1/ " $i "+"
		else

		if [ i -eq $h ]
		then
				s=$((s+1/i))
					echo "1/" $i "+"
		exit
		fi
	done

		echo "The nth harmonic number:  " $harmo1
