#!/bin/bash

while [ 1 -eq 1 ]
do
	read arg1 op arg2
	if [[ "$arg1" -eq "exit" ]]
	then	
		break
	fi
	
	flag=0
	for ops in + - * / % **
	do
		if [[ "$op" = "$ops" ]]
		then
			flag=1
		fi  
	done 

	if [[ $flag = 1 ]]
	then
		let "result = $arg1 $op $arg2"
		echo "$result"
	else
		echo "error"
	fi


done

echo "bye"
