#!/bin/bash -x
rupees=100
win=0
bets=0
while [ $rupees -ne 200 ] && [ $rupees -ne 0 ]
do
        a=$((RANDOM % 2))
        if [ $a -eq 1 ]
        then
                rupees=$(($rupees + 1))
                win=$(($win + 1))
        else
                rupees=$(($rupees - 1))
        fi
        bets=$(($bets + 1))
done
echo "total amount:" $rupees
echo " number of wins:" $win
echo "number of bets:" $bets

