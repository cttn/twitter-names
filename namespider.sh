#!/bin/bash

base="https://mobile.twitter.com/"

while [ 1 ]
do
	
	#i=$(cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w 5 | head -n 1)
	#i=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 5 | head -n 1)
	i=$(cat /dev/urandom | tr -dc 'a-z' | fold -w 5 | head -n 1)
	wget -q --spider $base$i
	if [ "$?" -eq "0" ]
	then
		echo $i >> taken.txt
	else	
		echo "Encontrado!! $i"
		echo $i >> nottaken.txt
	fi
	sleep 10
done
