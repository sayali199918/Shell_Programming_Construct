#!/bin/bash  
heads=0;
tails=0;
count=0;
while [ true ]
do
        number=$((RANDOM%2))
        if [ $number -eq 1 ]
        then
                (( heads ++ ))
        else
                (( tails ++ ))
        fi
        if [ $heads -eq 11 ]
        then
                echo "heads win"
                break;
        elif [ $tails -eq 11 ]
        then
                echo "tails win"
                break;
        fi
        (( count ++ ))
done

