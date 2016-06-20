#!/bin/bash

find_nod ()
{
	if [[ $1 -eq 0 ]]
	then
		return $2
	elif [[ $2 -eq 0 ]]
	then
		return $1
	fi


	if [[ $1 -gt $2 ]]
	then
		let "r = $1 % $2"
		find_nod $2 $r
	else
		let "r = $2 % $1"
		find_nod $1 $r
	fi
}


while [[ 1 -eq 1 ]]
do
	read n m
	if [[ "$n" == "" || "$m" == "" ]] # this is a mistake
	then
		break
	fi
	
	
	find_nod $n $m
	echo "GCD is $?"
done

echo "bye"

