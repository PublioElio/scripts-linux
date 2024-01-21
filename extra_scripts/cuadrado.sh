#!/bin/bash

if [ $# -eq 0 ]; then
    echo "ERROR. Se espera un número como argumento";exit 1
fi
numero=$1;cuadrado=$((numero * numero))
echo "El cuadrado de $numero es: $cuadrado"