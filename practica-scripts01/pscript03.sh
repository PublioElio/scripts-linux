#!/bin/bash

echo "Introduzca la ruta de un directorio: ";read dir
if [ -d $dir ]; then
    echo -n "El archivo de mayor tamaño es: ";ls -rS $dir | tail -1
fi