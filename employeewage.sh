#!/bin/bash -x

# is_full_time=2;
# is_part_time=1;
# Rate=100
# emp_check=$((RANDOM % 3));
# if [ $emp_check -eq $is_full_time ]
# then
#     Workinghrs=8
# elif [ $emp_check -eq $is_part_time ]
# then
#     Workinghrs=4
# else
#     Workinghrs=0
# fi
# Salary=$(( $Rate * $Workinghrs))
# echo "Employee earns $Salary"

is_full_time=2;
is_part_time=1;
Rate=20
numworkingdays=20;
totalsalary=0;
Workinghrs=0;
day=1;
# for (( day=1; day<=$numworkingdays; day++))
# do
#     emp_check=$((RANDOM % 3));
#         case $emp_check in
#             $is_part_time)
#                 Workinghrs=4;;
#             $is_full_time)
#                 Workinghrs=8;;
#             *)
#                 Workinghrs=0;;
#         esac

# salary=$(( $Rate * $Workinghrs))
# totalsalary=$(( $salary + $totalsalary))
# done

while [[ $day -le 20 && $totalWorkingHour -lt 40 ]]
do
	isPresent=$((RANDOM%3));
	case $isPresent in
		0)
		#echo "Employee is absent";
		workingHour=0;
		;;

		2)
		#echo "Employee is present";
		workingHour=8;
		;;

		1)
		#echo "Employee is working as part time";
		workingHour=4;
		;;
	esac
	totalWorkingHour=$(($totalWorkingHour + $workingHour));
	if [ $totalWorkingHour -gt 40 ]
	then
		totalWorkingHour=$(($totalWorkingHour - $workingHour));
		break;
	fi
	salary=$(($Rate * $workingHour));
	totalSalary=$(($totalSalary + $salary));
	((day++));
done