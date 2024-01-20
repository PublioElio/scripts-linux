#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Para el script $0 debe proporcionar un archivo de origen y un archivo de destino";exit 1
fi

if [ ! -r "$1" ]; then
    echo "ERROR. El archivo $1 no es de lectura";exit 1
fi

if [ -e "$2" ]; then
    if [ ! -w "$2" ]; then
        echo "ERROR. No tienes permisos de escritura en $2";exit 1
    fi

    read -p "¿Deseas sobrescribir el archivo $2? (y/n): " opcion
    if [ "$opcion" != "y" ]; then
        echo "Cancelar sobreescribir archivo";exit 0
    fi
fi

cp "$1" "$2"

if [ $? -eq 0 ]; then
    echo "El archivo $1 se ha copiado correctamente en $2"
else
    echo "ERROR. No se ha copiado el archivo $1 en $2"
fi
