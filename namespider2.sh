#!/bin/bash

base="https://mobile.twitter.com/"

while [ 1 ]
do
	
	#l1=$(cat /dev/urandom | tr -dc 'bcdfghjklmnpqrstvwxyz' | fold -w 1 | head -n 1)
	l2=$(cat /dev/urandom | tr -dc 'aeiou' | fold -w 1 | head -n 1)
	l3=$(cat /dev/urandom | tr -dc 'bcdfghjklmnpqrstvwxyz' | fold -w 1 | head -n 1)
	l4=$(cat /dev/urandom | tr -dc 'aeiou' | fold -w 1 | head -n 1)
	l5=$(cat /dev/urandom | tr -dc 'bcdfghjklmnpqrstvwxyz' | fold -w 1 | head -n 1)
	l6=$(cat /dev/urandom | tr -dc 'aeiou' | fold -w 1 | head -n 1)
	i=$l2$l3$l4$l5$l6
	wget -q --spider $base$i
	if [ "$?" -eq "0" ]
	then
		echo $i >> taken5.txt
	else	
		echo "Encontrado!! $i"
		echo $i >> nottaken5.txt
	fi
	sleep 10
done
