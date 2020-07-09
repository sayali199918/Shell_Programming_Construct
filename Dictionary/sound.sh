#!/bin/bash -x
declare -A sound
sound[dog]="Bark"
sound[Cow]="hamm "
sound[bird]="tweet"
sound[wolf]="howl"

echo "Dog Sounds " ${sound[dog]}
echo "Animal Sounds " ${sound[@]}
echo "All the animals are " ${!sound[@]}



