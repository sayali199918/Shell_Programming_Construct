#!/bin/bash -x
read -p "enter the power:" n
ans=1
i=1
while [ $n -ne 0 ] && [ $ans -lt 256 ]
do
        ans=$((2 * $ans))
        echo "2^$i=$ans"
        i=$(($i + 1))
        n=$(($n - 1))
done


