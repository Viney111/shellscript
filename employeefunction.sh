#!/bin/bash -x

is_full_time=2;
is_part_time=1;
is_absent=0
Rate=20;
Limit_days=20;
Limit_hrs=20;
TotalSalary=0;
TotalWorkingHrs=0
TotalWorkingDays=1

function getworkhrs (){
    local Emp_Check=$1
    case $Emp_Check in
            $is_full_time)
                            Workinghrs=8;;
            $is_part_time)
                            Workinghrs=4;;
            $is_absent)
                            Workinghrs=0;;
    esac
    echo "$Workinghrs"
}
while [[ $TotalWorkingHrs -lt $Limit_hrs && $TotalWorkingDays -lt $Limit_days ]]
do
    Emp_Check=$((RANDOM%2))
    WorkingHrs="$( getworkhrs $Emp_Check)"
    Salary=$(($WorkingHrs*$Rate))
    dailywage[$TotalWorkingDays]=$(($WorkingHrs*$Rate))
    TotalSalary=$(($TotalSalary+$Salary))
    TotalWorkingHrs=$(($TotalWorkingHrs+$WorkingHrs))
    ((TotalWorkingDays++))
done
echo "$TotalSalary"
echo "${!dailywage[@]}"

    