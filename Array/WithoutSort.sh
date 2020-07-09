#!/bin/bash 

second(){
first=0
second=0
for ((i=0 ; i<10 ; i++))
do
        if [ ${rand[i]} -gt $first ]
        then
                second=$first
                first=${rand[i]}
        elif [ ${rand[i]} -gt $second ] && [ ${rand[i]} -ne $first ]
        then
                second=${rand[i]}
        fi
done
echo "Second largest element is $second"
for ((i=0 ; i<10 ; i++))
do
        if [ ${rand[i]} -lt $first ]
        then
                second=$first
                first=${rand[i]}
        elif [ ${rand[i]} -lt $second ] && [ ${rand[i]} -ne $first ]
        then
                second=${rand[i]}
        fi
done
echo "Second smallest element is $second"
}

for ((i=0 ; i<10 ;i++))
do
        a=$(((RANDOM % 889) + 100))
        rand[i]="$a"
done
second
echo ${rand[@]}

