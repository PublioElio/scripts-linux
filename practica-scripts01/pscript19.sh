#!/bin/bash

archivo_correo="user_email.txt"

estado_original=$(stat -c %Y "$archivo_correo")

while true; do
    estado_actual=$(stat -c %Y "$archivo_correo")
    if [ "$estado_original" -ne "$estado_actual" ]; then
        echo "El archivo de correo ha cambiado"
        estado_original="$estado_actual"
    else
        echo "El archivo de correo no ha cambiado"
    fi
    sleep 30
done
