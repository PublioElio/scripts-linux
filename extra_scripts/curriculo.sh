#!/bin/bash

read -p "Introduzca su nombre: " nombre
read -p "Introduzca su apellido: " apellido
read -p "Introduzca su año de nacimiento: " anyo_nacimiento
anyo_actual=$(date +"%Y")
edad=$((anyo_actual - anyo_nacimiento))
echo "Usted se llama $nombre $apellido y tiene $edad años."