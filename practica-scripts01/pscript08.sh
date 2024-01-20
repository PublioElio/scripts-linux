#!/bin/bash

if [ $# -eq 0 ]; then
    echo "ERROR: debe introducirse el nombre de un archivo como argumento";exit 1
fi

archivo=$1

if [ -r "$archivo" ]; then
    echo "Contenido del archivo $archivo:";cat "$archivo";echo
else
    echo "ERROR: el archivo $archivo no existe o no es de lectura"
fi
