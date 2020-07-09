#!/bin/bash -x
read -p "enter the number:" number
fact=1;
for ((i=1; i<=number; i++))
do
	fact=$(($fact*$i))
done
echo $fact

