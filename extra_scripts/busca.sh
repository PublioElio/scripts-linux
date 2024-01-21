#!/bin/bash

if [ $# -eq 0 ]; then
    echo "ERROR. Debe proporcionar la ruta absoluta del archivo como argumento";exit 1
fi

archivo="$1"

if [ -e "$archivo" ]; then
    if [ -s "$archivo" ]; then
        echo "El archivo $archivo existe y tiene un tamaño mayor que cero"
    else
        echo "El archivo $archivo existe, pero tiene un tamaño de cero"
    fi
else
    echo "El archivo $archivo no existe"
fi