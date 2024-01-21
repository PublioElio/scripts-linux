#!/bin/bash

pmayus=""
while [ "$pmayus" != "FIN" ] 
do    
    read -p "Introduce una palabra (o 'fin' para salir): " palabra   
    pmayus=$(echo "$palabra" | tr '[:lower:]' '[:upper:]')
    [ "$pmayus" == "FIN" ] && echo "Fin del programa" || echo "Palabra en mayúsculas: $pmayus"
done