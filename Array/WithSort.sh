#!/bin/bash 
for ((i=0 ; i<10 ; i++))
do
        number=$(((RANDOM % 889) + 100))
        echo $number
        rand[i]="$number"
done

for ((i=0 ; i<10 ; i++))
do
        for ((j=0 ; j<10-i-1 ; j++))
        do
                if ((${rand[j]} > ${rand[$((j+1))]} ))
                then
                        temp=${rand[j]}
                        rand[$j]=${rand[$((j+1))]}
                        rand[$((j+1))]=$temp
                fi
        done
done
echo ${rand[@]}
echo "2nd largest element is ${rand[8]}"
echo "2nd smallest element is ${rand[1]}"

