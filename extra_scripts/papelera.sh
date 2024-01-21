#!/bin/bash

if [ $# -eq 0 ]; then
    echo "ERROR. Se espera un nombre de archivo como argumento";exit 1
fi
archivo="$1"
carpeta_destino="/home/guardar"
if [ -e "$archivo" ]; then
    sudo cp "$archivo" "$carpeta_destino"
    echo "El archivo '$archivo' ha sido movido a la carpeta de destino: $carpeta_destino"
fi