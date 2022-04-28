#!/bin/bash -x
read -p "Enter a year: " Y
Condition_1=$(( $Y % 4 ))
Condition_2=$(( $Y % 400 ))
Condition_3=$(( $Y % 100 ))

# if [ $Condition_3 -eq 0 ]
# then
#     if [ $Condition_2 -eq 0 ]
#     then
#             echo "This is a leap year"
#     else
#             echo "This is not a leap year"
#     fi
# elif [ $Condition_1 -eq 0 ]
# then
#     if [ $Condition_3 -ne 0 ]
#     then    
#             echo"This is a leap year"
#     else
#             echo "This is not a leap year"
#     fi
# else
# echo "This is not a leap year"
# fi
if [[ $Condition_3 -eq 0 && $Condition_2 -eq 0 ]]
then
echo "It is a leap year"
elif [[ $Condition_1 -eq 0 && $Condition_3 -ne 0 ]]
then
echo "It is a leap year"
else
echo "This is not a leap year"
fi
