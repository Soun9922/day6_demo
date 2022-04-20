#!/bin/bash

empwagepwehour=20;
present=1;
parttime=2;
workinghour=8;
maxworkingday=20;
maxworkinghour=40;

totalworkinghour=0;

day=0;

while [[ $day -lt $maxworkingday && $totalworkinghour -lt $maxworkinghour ]]
do

				if [ $totalworkinghour -eq $((maxworkinghour-workinghour/2)) ]
				then
						isPresent=$parttime;
				else
						isPresent=$((RANDOM%3));

				fi

				case $isPresent in

					$present)
								emphr=$workinghour;

					;;


					$parttime)
								emphr=$((workinghour/2));

					;;

					*)
						emphr=0;

					;;
		esac

		totalworkinghour=$((totalworkinghour+emphr));
		((day++));
done

totalsalary=$((totalworkinghour*empwageperhour));

echo "emp total working hour : $totalworkinghour";
echo "employee monthly wage : $" $totalsalary "USD";
echo "employee total working day :" $day;

