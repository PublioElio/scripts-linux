#!/bin/bash

while true; do

    echo -en "Menú:\n1. Borrar un fichero\n2. Imprimir un fichero\n3. Salir\nElija una opción: "
    read -r opcion

    case $opcion in
        1)
            read -p "Introduzca el nombre del fichero a borrar: " archivo;rm "$archivo"
            echo "Archivo '$archivo' borrado"
            ;;
        2)
            read -p "Ingrese el nombre del fichero a imprimir: " archivo;cat "$archivo"  
            ;;
        3)
            echo "Finalizando";exit 0
            ;;
        *)
            echo "ERROR. Por favor, elija una opción válida"
            ;;
    esac
done
