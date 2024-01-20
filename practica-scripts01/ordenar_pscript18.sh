#!/bin/bash

ordenar_menu() {
    echo -e "Menú de Ordenación:\n1. Ordenar archivos por nombre\n2. Ordenar archivos por tamaño\n3. Volver al menú anterior"
    read -p "Elija una opción: " opcion
    return "$opcion"
}

while true; do
    ordenar_menu
    case $? in
        1)
            echo "Ordenando archivos por nombre."
            ls -l
            ;;
        2)
            echo "Ordenando archivos por tamaño."
            ls -lhS
            ;;
        3)
            echo "Volver al menú anterior";sleep 1;clear
            break
            ;;
        *)
            echo "ERROR. Introduzca una opción válida"
            ;;
    esac
done