#!/bin/bash -x
Head=1
Tail=0
i=0
Countersofheadwon=0
Countersoftailwon=0


while [[ $Countersofheadwon -lt 2 && $Countersoftailwon -lt 2 ]]
do
    Coin_flip=$((RANDOM%2))
    if [ $Coin_flip -eq $Head ]
        then
        Countersofheadwon=$(($Countersofheadwon+1))
        else
        Countersoftailwon=$(($Countersoftailwon+1))
    fi
done
if [ $Countersofheadwon -gt $Countersoftailwon ]
then
echo "Head wins by $(($Countersofheadwon-$Countersoftailwon)) times"
else
echo "Tail wins by $(($Countersoftailwon-$Countersofheadwon)) times"
fi
if [ $Countersofheadwon -eq $Countersoftailwon ]
then
    while [[ $(($Countersofheadwon-$Countersoftailwon)) -eq 2 && $(($Countersoftailwon-$Countersofheadwon)) -eq 2 ]]
    do
        Coin_flip=$((RANDOM%2))
        if [ $Coin_flip -eq $Head ]
        then
        Countersofheadwon=$(($Countersofheadwon+1))
        else
        Countersoftailwon=$(($Countersoftailwon+1))
        fi
    done
fi