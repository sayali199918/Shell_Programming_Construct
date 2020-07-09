#!/bin/bash -x
read -p "enter number to check prime or not:" number
count=0
for ((i=1; i<=$number; i++))
do
	if [ $(($number%$i)) -eq 0 ]
	then
		((count ++))
	fi
done
if [ $count -eq 2 ]
then
	echo "prime no"
else
	echo "not a prime no"
fi

