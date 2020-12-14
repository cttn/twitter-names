#!/bin/bash 

base="https://mobile.twitter.com/"

while read line 
do 
	stlen=$(expr length $(echo $line | tr -d " "))
	#echo $stlen
	if [ $stlen -lt "6" ]
       	then 
		if [ $stlen -gt "4" ]
		then
			wget -q --spider $base$line
			if [ "$?" -eq "0" ]
			then
				echo $line >> dic_taken.txt
			else
				echo "Encontrado!! $line"
				echo $line >> dic_nottaken.txt
			fi
			sleep 10
		fi
	fi 
done < ./diccionario.sin.acentos
