#!/bin/bash 
oneValue=0 twoValue=0 threeValue=0 fourValue=0 fiveValue=0 sixValue=0
repeatedValue=0
declare -A dieDict
declare -A everyDieDict
while [[ oneValue -lt 10 && twoValue -lt 10 && threeValue -lt 10 && fourValue -lt 10 && fiveValue -lt 10 && sixValue -lt 10 ]]
do
   random=$((RANDOM%6 + 1))
   case $random in
   1) oneValue=$(($oneValue+1))
      dieDict[$repeatedValue]=$oneValue
      ;;
   2) twoValue=$(($twoValue+1))
      dieDict[$repeatedValue]=$twoValue
      ;;
   3) threeValue=$(($threeValue+1))
      dieDict[$repeatedValue]=$threeValue
      ;;
   4) fourValue=$(($fourValue+1))
      dieDict[$repeatedValue]=$fourValue
      ;;
   5) fiveValue=$(($fiveValue+1))
      dieDict[$repeatedValue]=$fiveValue
      ;;
   6) sixValue=$(($sixValue+1))
      dieDictionary[$repeatedValue]=$sixValue
      ;;
   esac

   repeatedValue=$(($repeatedValue+1))
done
	everyDieDict[1]=$oneValue
	everyDieDict[2]=$twoValue
	everyDieDict[3]=$threeValue
	everyDieDict[4]=$fourValue
      	everyDieDict[5]=$fiveValue
      	everyDieDict[6]=$sixValue



echo "dictionary  " ${dieDict[@]}
echo "dictionary of every die " ${everyDieDict[@]}
for i in ${!dieDict[@]}
do
	  echo "$i  : ${dieDict[$i]}"
done | sort -k1 -n

echo "number of times dice rolled "
for d in ${!everyDieDict[@]}
do
   echo "$d  : ${everyDieDict[$d]}"
done | sort -k1 -n

echo "minimum number of times die rolled "
for d in ${!everyDieDict[@]}
do
   echo "$d  : ${everyDieDict[$d]}"
done | sort -k3 -n | head -1

echo "maximum number of times die rolled"
for d in ${!everyDieDict[@]}
do
   echo "$d  : ${everyDieDicti[$d]}"
done | sort -k3 -n | tail -1

