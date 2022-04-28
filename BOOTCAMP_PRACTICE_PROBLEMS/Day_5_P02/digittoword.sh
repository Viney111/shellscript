#!/bin/bash -x
read -p "Enter Number " Number
# if [ $Number -eq 1 ]
# then
#      echo "ONE"
# elif [ $Number -eq 2 ]
# then
#      echo "TWO"
# elif [ $Number -eq 3 ]
# then
#      echo "THREE"
# elif [ $Number -eq 4 ]
# then
#      echo "FOUR"
# elif [ $Number -eq 5 ]
# then
#      echo "FIVE"
# elif [ $Number -eq 6 ]
# then
#      echo "SIX"
# elif [ $Number -eq 7 ]
# then
#      echo "SEVEN"
# elif [ $Number -eq 8 ]
# then
#      echo "EIGHT"
# elif [ $Number -eq 1 ]
# then
#      echo "NINE"
# else
#      echo "ONE"
# fi

case $Number in
     1)
          echo "ONE";;
     2)
          echo "TWO";;
     3)
          echo "THREE";;
     4)
          echo "FOUR";;
     5)
          echo "FIVE";;
     6)
          echo "SIX";;
     7)
          echo "SEVEN";;
     8)
          echo "EIGHT";;
     9)
          echo "NINE";;
     *)
          echo "Enter number between 1 to 9";;
esac
