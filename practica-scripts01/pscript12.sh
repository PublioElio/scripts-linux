#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Debe introducir algún archivo como argumento";exit 1
fi

impresos="impresos.txt";no_impresos="no_impresos.txt"

for archivo in "$@"; do
    if [ -e "$archivo" ]; then
        cat "$archivo";echo
        echo "$archivo" >> "$impresos"
    else
        echo "$archivo" >> "$no_impresos"
    fi
done

echo "Lista de achivos imprimibles guardada en $impresos"
echo "Lista de archivos no imprimibles guardada en $no_impresos"