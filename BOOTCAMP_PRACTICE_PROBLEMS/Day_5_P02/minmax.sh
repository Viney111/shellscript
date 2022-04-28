#!/bin/bash -x

Number_1=$((RANDOM%900 + 100))
Number_2=$((RANDOM%900 + 100))
Number_3=$((RANDOM%900 + 100))
Number_4=$((RANDOM%900 + 100))
Number_5=$((RANDOM%900 + 100))
Min_number=1000
if [ $Number_1 -lt $Min_number ]
then
    Min_number=$Number_1
fi
if [ $Number_2 -lt $Min_number ]
then
    Min_number=$Number_2
fi
if [ $Number_3 -lt $Min_number ]
then
    Min_number=$Number_3
fi
if [ $Number_4 -lt $Min_number ]
then
    Min_number=$Number_4
fi
if [ $Number_5 -lt $Min_number ]
then
    Min_number=$Number_5
fi

Max_number=100
if [ $Number_1 -gt $Max_number ]
then
    Max_number=$Number_1
fi
if [ $Number_2 -gt $Max_number ]
then
    Max_number=$Number_2
fi
if [ $Number_3 -gt $Max_number ]
then
    Max_number=$Number_3
fi
if [ $Number_4 -gt $Max_number ]
then
    Max_number=$Number_4
fi
if [ $Number_5 -gt $Max_number ]
then
    Max_number=$Number_5
fi
echo $Max_number
echo $Min_number


