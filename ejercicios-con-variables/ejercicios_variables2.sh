#!/bin/bash

echo -n "Introduzca el nombre de un fichero: ";read fichero
echo -n "Introduzca un valor numérico: ";read num
head -n $num /etc/group >> $fichero;echo "$?"
cut -d: -f$num,$num /etc/passwd >> $fichero;echo "$?"
cat $fichero
