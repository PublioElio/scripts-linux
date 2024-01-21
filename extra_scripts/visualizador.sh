#!/bin/bash

if [ $# -eq 0 ]; then
    echo "ERROR. Se espera una ruta absoluta como argumento";exit 1
fi

archivo=$1

[ -e "$archivo" ] && cat "$archivo";echo || echo "Lo siento, el archivo '$archivo' no existe"