#!/bin/bash -x
read -p "enter the start number:" begin
read -p "enter the last number:" end
for ((i=$begin; i<=$end; i++))
do
	flag=1
	for ((j=2; j<=i/2; j++))
	do
		if [ $(($i % $j)) -eq 0 ]
		then
			flag=0
			break
		fi
	done
	if [ $flag -eq 1 ]
	then
		echo "$i prime"
	fi
done
