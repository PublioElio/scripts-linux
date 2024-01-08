#!/bin/bash

var="s"
while [ $var != "n" ]
do
	whoami;cd;ls -l
	echo "¿quieres ejecutar de nuevo el script? (s/n)"
	read -r var
done
