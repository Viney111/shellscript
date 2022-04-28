#! /bin/bash -x

checkNumberValue=""

read -p "Enter the first number " num_a
read -p "Enter the second number " num_b

testNum_b=$num_b
testNum_a=$num_a
if [ $num_a -eq $num_b ]
then
        echo "Is anagram"
elif [ ${#num_a} -eq ${#num_b} ]
then
        echo "Check anagram"
        while [ $num_a -gt 0 ]
        do
                echo $num_a
                rem_a=$(($num_a%10))
                echo $rem_a
                num_b=$testNum_b
                while [ $num_b -gt 0 ]
                do
                        rem_b=$(($num_b%10))
                        if [ $rem_a -eq $rem_b ]
                        then
                                checkNumberValue=$rem_a""$checkNumberValue
                        fi
                        num_b=$(($num_b/10))
                done
                num_a=$(($num_a/10))
        done
        if [ $testNum_a -eq $checkNumberValue ]
        then
                echo "Congrate's your number "$testNum_a","$testNum_b" are anagram "
        else
                echo "Not anagram but length same"
        fi
else
        echo "Not anagram"
fi