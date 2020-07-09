#!/bin/bash 

declare -A dictionary
R=0
function random() {
R=$(($RANDOM%6+1))
}

diceNum1count=0
diceNum2count=0
diceNum3count=0
diceNum4count=0
diceNum5count=0
diceNum6count=0

dictionary=( ["1"]=0 ["2"]=0 ["3"]=0 ["4"]=0 ["5"]=0 ["6"]=0 )

while [[ $diceNum1count -lt 10 && $diceNum2count -lt 10 && $diceNum3count -lt 10 && $diceNum4count -lt 10 && $diceNum5count -lt 10 && $diceNum6count -lt 10 ]]
do
			random
			if [[ $R -eq 1 ]]
			then
						((diceNum1count++))
						dictionary[1]=$diceNum1count
			elif [[ $R -eq 2 ]]
			then
						((diceNum2count++))
						dictionary[2]=$diceNum2count
			elif [[ $R -eq 3 ]]
   		then
         			((diceNum3count++))
         			dictionary[3]=$diceNum3count
			elif [[ $R -eq 4 ]]
   		then
         			((diceNum4count++))
		   			dictionary[4]=$diceNum4count
			elif [[ $R -eq 5 ]]
   		then
         			((diceNum5count++))
         			dictionary[5]=$diceNum5count
			elif [[ $R -eq 6 ]]
   		then
         			((diceNum6count++))
         			dictionary[6]=$diceNum6count
			fi

done

for(( j=1; j<=6; j++ ))
do
			if [[ ${dictionary[$j]} -eq 10 ]]
			then
						maxIndexValue=$j
						maxIndexCount=${dictionary[$j]}
			fi
done

minIndexValue=1
minIndexCount=${dictionary[1]}
for(( k=2; k<=6; k++ ))
do
         if [[ $minIndexCount -gt ${dictionary[$k]} ]]
         then
         minIndexCount=${dictionary[$k]}
         minIndexValue=$k
         fi
done

echo "dice number $maxIndexValue having maximum count: $maxIndexCount times"
echo "dice number $minIndexValue having minimum count: $minIndexCount times"
echo "dictionary count: "${dictionary[@]}
echo "dictionary values: "${!dictionary[@]}
