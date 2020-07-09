#!/bin/bash -x
function getDegF(){
        read -p "enter temperature in celsius:" degC
        if [ $degC -lt 101 ] && [ $degC -gt 0 ]
        then
                degF=$(( ($degC * 9/5) + 32))
        else
                echo "Invalid temperature"
        fi
}
function getDegC(){
        read -p "enter temperature in farenheit:" degF
        if [ $degF -lt 213 ] && [ $degF -gt 31 ]
        then
                degF=$(( ($degF - 32) * 5/9))
        else
                echo "Invalid temperature"
        fi
}
read -p "enter your choice:" choice
case $choice in
        1)

                $(getDegF)
                ;;
        2)
                $(getDegC)
                ;;
esac

