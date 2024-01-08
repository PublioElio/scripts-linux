#!/bin/bash

var="s"
while [ $var != "n" ]
do
	whoami;cd;ls -l
	echo "¿quieres ejecutar de nuevo el script? (s/n)"
	read -r var
	if [ -z "$var" ] || [ "$var" != "s" ] && [ "$var" != "n" ]; then
		echo "Introduzca un valor válido (s/n)"
	fi
done
