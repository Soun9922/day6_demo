#!/bin/bash

perhoursalary=20;
workinghour=0;
totalsalary=0;

for ((day=1;day<=20;day++))
do
			isPresent=$((RANDOM%3));
			case $isPresent in
				0)
				workinghour=0;

				;;

				1)
				workinghour=8;

				;;

				2)
				workinghour=4;

				;;

esac
salary=$(($perhoursalary*$workinghour));
totalsalary=$(($totalsalary+$salary));
done

echo "Employee has earned $totalsalary $ in a month";

