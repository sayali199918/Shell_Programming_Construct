#!/bin/bash 
read -p "Enter no of elements you wanna enter into array" n
echo "Enter elements"
for ((i=0;i<$n;i++))
do
        echo "Enter elements"
        read arr[$i]
done

for ((i=0;i<$((n-2));i++))
do
        a=${arr[$i]}
        for ((j=$((i+1));j<$((n-1));j++))
        do
                b=${arr[$j]}
                for ((k=$((j+1));k<$n;k++))
                do
                        c=${arr[$k]}
                        if [ $((a+b+c)) -eq 0 ]
                        then
                                echo ${arr[i]}
                                echo ${arr[j]}
                                echo ${arr[k]}
                        fi
                done
        done
done
echo ${arr[@]}


