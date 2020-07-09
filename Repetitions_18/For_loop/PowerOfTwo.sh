#!/bin/bash -x 
read -p "enter the power:" power
for ((i=1; $i<=(( 2**$power ))/2; i++))
do
        sum=$(($i*2))
done
echo $sum


