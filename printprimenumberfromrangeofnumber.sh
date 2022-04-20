#!/bin/bash

read -p "Enter the number of starting range : " m
read -p "Enter the number of end range : " n

echo "The prime number in a given range are :  "
for((i=$m;i<=$n;i++))
do
	max1=`echo | awk '{print sqrt($a)}'`
	max2=`printf % f "$max1"`
	maxcap=$max2
	check=0

	for((j=2;j<=$maxcap;j++))
	do
		if [ $(($i%$j)) -eq 0 ]
		then
				check=1
				break
			fi
		done
		if [ $check -eq 0 ]
		then
				echo -n "$i  "
		fi
	done
