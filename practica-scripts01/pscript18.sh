#!/bin/bash

menu() {
    echo -e "Menú principal:\n1. Buscar\n2. Ordenar\n3. Salir"
    read -p "Elija una opción: " opcion
    return "$opcion"

}

while true; do
    menu
    case $? in
        1)
            ./buscar_pscript18.sh
            ;;
        2)
            ./ordenar_pscript18.sh
            ;;
        3)
            echo "Programa finalizado";exit 0
            ;;
        *)
            echo "ERROR. Opción no válida"
            ;;
    esac
done
