#!/bin/bash

while [ 1 -eq 1 ]
do
	read arg1 op arg2
	if [[ "$op" = "+" ]]
	then
		let "result = arg1 + arg2"
		echo "$result"
	elif [[ "$op" = "-" ]]
	then
		let "result = arg1 - arg2"
		echo "$result"
	elif [[ "$op" = "*" ]]
	then
		let "result = arg1 * arg2"
		echo "$result"
	elif [[ "$op" = "/" ]]
	then
		let "result = arg1 / arg2"
		echo "$result"
	elif [[ "$op" = "%" ]]
	then
		let "result = arg1 % arg2"
		echo "$result"
	elif [[ "$op" = "**" ]]
	then
		let "result = arg1 ** arg2"
		echo "$result"
	elif [[ "$arg1" = "exit" ]]
	then
		break
	else
		echo "error"
	fi


done

echo "bye"
