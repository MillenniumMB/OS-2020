#!/bin/bash
declare -a array
declare -a numbers=(1 2 3 4 5 6 7 8 9 10)
N=$1
while true
do
	array+=(${numbers[@]})
	let counter++
	if [[ $counter == 10000 ]]
	then
		counter=0
		if [ "${#array[@]}" -gt "$N" ]
		then
			echo "$N"
			exit 0
		fi
	fi
done
