#!/bin/bash

menu_buscar() {
    echo -e "Menú de Búsqueda:\n1. Buscar por campo determinado\n2. Buscar por dato\n3. Volver al menú anterior"
    read -p "Escriba su opción: " opcion
    return "$opcion"
}

while true; do
    menu_buscar
    case $? in
        1)
            echo -e "Ingrese el campo para buscar:\n1. Ciudad\n2. País\n3. Continente"
            read -r campo
            cut -d: -f"$campo" ubicaciones.txt
            ;;
        2)
            echo -n "Ingrese el dato para buscar:";read dato
            grep -i "$dato" ubicaciones.txt
            ;;
        3)
            echo "Volver al menú principal";sleep 1;clear
            break
            ;;
        *)
            echo "ERROR. Opción no válida"
            ;;
    esac
done