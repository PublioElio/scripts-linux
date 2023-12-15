#!/bin/bash

echo -n "Introduzca el nombre de un fichero: ";read fichero
resultado=$(grep -o $1 $fichero | wc -l)
echo "$?";echo "$resultado"
