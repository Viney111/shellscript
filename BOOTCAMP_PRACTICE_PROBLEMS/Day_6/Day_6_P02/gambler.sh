#!/bin/bash -x

Money=100
Bet=1
Goal_Money=200
Bet_Won=1
Bet_Loss=0
Won_Times=0
No_of_bets=0

while [[ $Money -gt 0 && $Money -le $Goal_Money ]]
do

    if [ $((RANDOM%2)) -eq 0 ]
    then
    Money=$(($Money-1))
    else
    Money=$(($Money+1))
    Won_Times=$(($Won_Times+1))
    fi
No_of_bets=$(($No_of_bets+1))
done
echo "$Won_Times"
echo "$No_of_bets"


    


