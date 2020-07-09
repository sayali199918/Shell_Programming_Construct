#!/bin/bash 
declare -A personDict
Jan=0 Feb=0 March=0 April=0 May=0 June=0 July=0 Aug=0 Sept=0 Oct=0 Nov=0 Dec=0

for((i=1;i<=50;i++))
do
        randomYear=$((RANDOM%2))
        randomMonth=$((RANDOM%12 + 1))
        if [ $randomYear -eq 0 ]
        then
                randomYear=92
        else
                randomYear=93
        fi

        personDict["person_$i"]=$randomMonth
done
echo ${personDict[@]}
for i in ${!personDict[@]}
do
   echo "$i  : ${personDict[$i]}"
done | sort -k3 -n

echo "persons having same month"
for j in ${!personDict[@]}
do
        case ${personDict[$j]} in
                1)Jan=$(($Jan+1))
                        echo "$j : ${personDict[$j]}";;
                2)Feb=$(($Feb+1))
                        echo "$j : ${personDict[$j]}";;
                3)March=$(($March+1))
                        echo "$j : ${personDict[$j]}";;
                4)April=$(($April+1))
                        echo "$j : ${personDict[$j]}";;
                5)May=$(($May+1))
                        echo "$j : ${personDict[$j]}";;
                6)June=$(($June+1))
                        echo "$j : ${personDict[$j]}";;
                7)July=$(($July+1))
                        echo "$j : ${personDict[$j]}";;
                8)Aug=$(($Aug+1))
                        echo "$j : ${personDict[$j]}";;
                9)Sept=$(($Sept+1))
                        echo "$j : ${personDict[$j]}";;
			10)Oct=$(($Oct+1))
                        echo "$j : ${personDict[$j]}";;
                11)Nov=$(($Nov+1))
                        echo "$j : ${personDict[$j]}";;
                12)Dec=$(($Dec+1))
                        echo "$j : ${personDict[$j]}";;
        esac
done

echo "number of person"
echo "Month_1 : $Jan"
echo "Month_2 : $Feb"
echo "Month_3 : $March"
echo "Month_4 : $April"
echo "Month_5 : $May"
echo "Month_6 : $June"
echo "Month_7 : $July"
echo "Month_8 : $Aug"
echo "Month_9 : $Sept"
echo "Month_10 : $Oct"
echo "Month_11 : $Nov"
echo "Month_12 : $Dec"


