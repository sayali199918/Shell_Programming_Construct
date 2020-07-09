#!/bin/bash -x
read -p "enter the number:" number
sum=0;
for ((i=1; $i<=$number; i++))
do
	a=`(echo 'scale=2; 1/'$i'' |bc)`
	sum=`(echo $sum + $a | bc)`
done
echo $sum
