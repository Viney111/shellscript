#!/bin/bash -x
Head=1
Tail=0
a=1
m=0
n=0

# declare -A Flip_Singlet
# while [ $a -le 20 ]
# do
#         if [ $((RANDOM%2)) -eq 1 ]
#         then
#                 Flip_Singlet[$a]="H"
#                 m=$(($m+1))
#         else
#                 Flip_Singlet[$a]="T"
#                 n=$(($n+1))
#         fi
# a=$(($a+1))
# done
# echo "${Flip_Singlet[@]}"
# echo "${#Flip_Singlet[@]}"
#     Headpercent=$(($(($m*100))/${#Flip_Singlet[@]}))
#     echo "Percentage of Heads won: $Headpercent"

#     Tailpercent=$(($(($n*100))/${#Flip_Singlet[@]}))
#     echo "Percentage of Tails won: $Tailpercent"
# # For doublet combination
# p=0
# q=0
# r=0
# s=0
# b=1
# declare -A Flip_Doublet
# while [ $b -le 20 ]
# do
#         First=$(($RANDOM%2))
#         Second=$(($RANDOM%2))
#         if [[ $First -eq 1 && $Second -eq 1 ]]
#         then
#                 Flip_Doublet[$b]="HH"
#                 p=$(($p+1))
#         elif [[ $First -eq 1 && $Second -eq 0 ]]
#         then    
#                 Flip_Doublet[$b]="HT"
#                 q=$(($q+1))
#         elif [[ $First -eq 0 && $Second -eq 1 ]]
#         then    
#                 Flip_Doublet[$b]="TH"
#                 r=$(($r+1))
#         else
#                 Flip_Doublet[$b]="TT"
#                 s=$(($s+1))
#         fi
# b=$(($b+1))
# done
# echo "${Flip_Doublet[@]}"

#     HH_percent=$(($(($p*100))/${#Flip_Doublet[@]}))
#     echo "Percentage of HH won: $HH_percent"

#     HT_percent=$(($(($q*100))/${#Flip_Doublet[@]}))
#     echo "Percentage of HT won: $HT_percent"

#     TH_percent=$(($(($r*100))/${#Flip_Doublet[@]}))
#     echo "Percentage of TH won: $TH_percent"

#     TT_percent=$(($(($s*100))/${#Flip_Doublet[@]}))
#     echo "Percentage of TT won: $TT_percent"

p1=0
q1=0
r2=0
s2=0
t2=0
u2=0
v2=0
w2=0
x2=0
b2=1
declare -A Flip_Triplet
while [ $b2 -le 20 ]
do
        First=$(($RANDOM%2))
        Second=$(($RANDOM%2))
        Third=$(($RANDOM%2))
        case "$First""$Second""$Third" in
            "1""1""1")
                      Flip_Triplet[$b2]="HHH"
                      p1=$(($p1+1));;
            "1""1""0")
                      Flip_Triplet[$b2]="HHT"
                      q1=$(($q1+1));;
            "1""0""1")
                      Flip_Triplet[$b2]="HTH"
                      r1=$(($r1+1));;
            "1""0""0")
                      Flip_Triplet[$b2]="HTT"
                      s1=$(($s1+1));;    
            "0""0""1")
                      Flip_Triplet[$b2]="TTH"
                      t1=$(($t1+1));;
            "0""0""0")
                      Flip_Triplet[$b2]="TTT"
                      u1=$(($u1+1));;
            "0""1""1")
                      Flip_Triplet[$b2]="THH"
                      v1=$(($v1+1));;
            "0""1""0")
                      Flip_Triplet[$b2]="THT"
                      w1=$(($w1+1));;    
            *)
            echo "Would not come" ;;
        esac
b2=$(($b2+1))
done
echo "${Flip_Triplet[@]}"

    HHH_percent=$(($(($p1*100))/${#Flip_Triplet[@]}))
    echo "Percentage of HHH won: $HHH_percent"
    HHT_percent=$(($(($q1*100))/${#Flip_Triplet[@]}))
    echo "Percentage of HHT won: $HHT_percent"
    HTH_percent=$(($(($r1*100))/${#Flip_Triplet[@]}))
    echo "Percentage of HTH won: $HTH_percent"
    HTT_percent=$(($(($s1*100))/${#Flip_Triplet[@]}))
    echo "Percentage of HTT won: $HTT_percent"
    TTH_percent=$(($(($t1*100))/${#Flip_Triplet[@]}))
    echo "Percentage of TTH won: $TTH_percent"
    TTT_percent=$(($(($u1*100))/${#Flip_Triplet[@]}))
    echo "Percentage of TTT won: $TTT_percent"
    THH_percent=$(($(($v1*100))/${#Flip_Triplet[@]}))
    echo "Percentage of THH won: $THH_percent"
    THT_percent=$(($(($w1*100))/${#Flip_Triplet[@]}))
    echo "Percentage of THT won: $THT_percent"