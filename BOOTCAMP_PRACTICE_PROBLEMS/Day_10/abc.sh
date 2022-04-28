#!/bin/bash -x
declare -A Result
read -p "Enter a= " a
read -p "Enter b= " b
read -p "Enter c= " c

Result[1]="$(($a + $b * $c ))"
# echo "$Result_1"

Result[2]="$(($a * $b + $c ))"
# echo "$Result_2"

Result[3]="$(($c + $a / $b ))"
# echo "$Result_3"

Result[4]="$(($a % $b + $c ))"
# echo "$Result_4"

echo "${Result[@]}"
echo "${!Result[@]}"
echo "${Result[1]}"
echo "${Result[*]}"

# #For ascending order
# for ((i = 0; i<5; i++))
# do
    
#     for((j = 0; j<5-i-1; j++))
#     do
    
#         if [ ${Result[$j]} -gt ${Result[$(($j+1))]} ]
#         then
#    
#             temp=${Result[$j]}
#             Result[$j]=${Result[$(($j+1))]}  
#             Result[$(($j+1))]=$temp
#         fi
#     done
# done

# echo "Array in sorted order :"
# echo ${Result[*]}

# #For descending order
for ((i=0; i<5; i++))
do
    for ((j=0;j<=4;j++))
    do

        if [ ${Result[$j]} -lt ${Result[$(($j+1))]} ]
        then
        temp=${Result[$j]}
        Result[$j]=${Result[$(($j+1))]}  
        Result[$(($j+1))]=$temp
        fi
    done
done

echo "Array in sorted order :"
echo ${Result[*]}
