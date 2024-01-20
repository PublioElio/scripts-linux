#!/bin/bash

read -p "Indique el nombre del archivo a imprimir: " archivo
if [ ! -e "$archivo" ]; then
    echo "El archivo especificado no existe";exit 1
fi
read -p "¿Cuántas veces quiere imprimir el documento? " repeticiones
contador=1

while [ $contador -le "$repeticiones" ]; do
    lp "$archivo"
    echo "Trabajo de impresión $contador enviado"
    ((contador++))
done

echo "Impresiones finalizadas"