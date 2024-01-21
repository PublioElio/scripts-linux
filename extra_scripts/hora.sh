#!/bin/bash

archivo="/home/reloj/hora"

if [ ! -d "/home/reloj" ]; then
    echo "No existe ni el directorio ni el archivo. Creando directorio...";sleep 1
    sudo mkdir -p "/home/reloj"
fi

if [ ! -e "$archivo" ]; then
    echo "No existe el archivo. Creando archivo...";sleep 1
    sudo touch "$archivo"
else
    hora=$(date +"%H:%M:%S")
    echo "$hora" | sudo tee  "$archivo";echo "Hora actual guardada en '$archivo'"
fi