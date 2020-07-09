#!/bin/bash 
function smallestLargest(){
	for (( i=1;i<=10;i++ ))
	do
		number=$((RANDOM%1000))
		if [ $number -ge 100 ] && [ $number -le 999 ]	
		then
			array[i]=$number
		else
			(( i-- ))
		fi
	done
	echo ${array[@]}
	for(( i=1;i<=10;i++ ))
	do
		for(( j=i+1;j<=10;j++))
		do
			if [ ${array[i]} -gt ${array[j]} ]
			then 
				temp=${array[i]}
				array[i]=${array[j]}
				array[j]=$temp
			fi
		done
	done
	echo "array sorting with ascending order: ${array[@]} "
	echo "second smallest element: ${array[2]} "
	echo "second largest element: ${array[9]} "
}
smallestLargest
