#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "ERROR. Número necesario de argumentos: 3";exit 1
fi

num1=$1;num2=$2;num3=$3

media=$(echo "scale=3; ($num1 + $num2 + $num3) / 3" | bc)

echo "La media aritmética de $num1, $num2 y $num3 es: $media"