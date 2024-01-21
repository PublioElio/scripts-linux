#!/bin/bash

read -p "Introduce la palabra clave: " keyword

if [ "$keyword" = "sesamo" ]; then
    echo "Acceso concedido. Visualizando /etc/passwd: "
    sudo cat /etc/passwd
else
    echo "Lo siento, no está autorizado."
fi