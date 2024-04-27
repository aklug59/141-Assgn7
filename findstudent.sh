#!/bin/bash

declare -a ids=("0001" "0002" "0003" "0004" "1994")

if [[ $1 == "" ]]; then
	echo "Please enter a student ID: " 
	read varname
	set -- "${@:1}" $varname
fi



for i in "${ids[@]}"
do
       	if [[ $1 == $i ]]; then
		echo "Final Grade: " `jq -r '.students."'$1'"' grades.json`
	fi
done
