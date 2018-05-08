#!/bin/bash
IFS=,
cat elements.csv | while read line
do
field=( $line )
echo "$line">>elements/"${field[0]}".txt;
#  for word in "${field[@]:1}"; 
#	do 
#	echo "${field[0]}";
#	echo "$word">>elements/"${field[0]}".txt; 
#	done

  # or use the positional parameters
  #set -- $line
  #for word in "$@"; do echo "$word"; done
done
