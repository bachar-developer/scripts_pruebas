#!/bin/bash


echo "Indroduzca su nombre"

read nombre


if  grep  "$nombre"  lista.txt ; then 
	echo "Bienvenido $nombre"
 	for i in  lista.txt
		do 
			echo  grep "$i"
		done  
else
	echo "Error el nombre no esta en la base de datos"
fi
