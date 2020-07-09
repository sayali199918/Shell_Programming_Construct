#!/bin/bash 

echo "Enter the number:"
read n
cnt=0
for ((i=2; i<=n; i++))
do
        while [ $(($n % $i)) -eq 0 ]
        do
                prime[cnt++]="$i"
                n=$(($n / $i))
        done
done
echo ${prime[@]}

