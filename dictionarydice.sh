#!/bin/bash -x
# i=0
# declare -A Dict
# while [ $i -lt 10 ]
# do
#     Roll_Die=$((RANDOM%6 +1))
#     counter=0
#     Dict[$i]=$Roll_Die
#     i=$(($i+1))
# done
# echo "${Dict[@]}"

a=0
b=0
c=0
d=0
e=0
f=0

while [[ $a -lt 2 && $b -lt 2 ]] [[ $c -lt 2 && $d -lt 6 ]] [[ $e -lt 2 && $f -lt 2 ]]
do
    Roll_Die=$((RANDOM%6 +1))
    case $Roll_Die in
            "1")
                a=$(($a+1));;
            "2")
                b=$(($b+1));;
            "3")
                c=$(($c+1));;
            "4")
                d=$(($d+1));;
            "5")
                e=$(($e+1));;
            "6")
                f=$(($f+1));;
            *)
                echo "Nothing"
    esac
done
echo $a