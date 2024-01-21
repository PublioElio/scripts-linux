#!/bin/bash

if [ $# -eq 0 ]; then
    echo "ERROR. Proporcione la ruta absoluta de un archivo";exit 1
fi

archivo="$1"

if [ ! -f "$archivo" ]; then
    echo "El archivo no existe";exit 1
fi

tam=$(stat -c %s "$archivo")

if [ "$tam" -gt 200 ]; then
    echo "El archivo es demasiado grande."
else
    cat "$archivo";echo
fi