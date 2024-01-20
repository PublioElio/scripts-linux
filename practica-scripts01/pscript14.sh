#!/bin/bash

menu() {
    echo -e "Menú:\n1. Buscar un archivo\n2. Cambiar permisos de un archivo\n3. Buscar una cadena en archivo\n4. Salir"
    read -p "Seleccione una opción (1-4): " opcion
    return "$opcion"
}

while true; do
    menu
    
    case $? in
        1)
            read -p "Introduzca el nombre del archivo para buscar: " archivo
            [ -e "$archivo" ] && echo "El archivo $archivo existe" || echo "El archivo $archivo no existe"
            ;;
        2)
            read -p "Introduzca el archivo para cambiar permisos: " archivo_permisos
            if [ -e "$archivo_permisos" ]; then
                read -p "Introduzca los nuevos permisos en formato octal: " permisos
                chmod "$permisos" "$archivo_permisos"
                echo "Los permisos del archivo $archivo_permisos se han modificado:"
                ls -l "$archivo_permisos"
            else
                echo "ERROR. El archivo $archivo_permisos no existe"
            fi
            ;;
        3)
            read -p "Introduzca el nombre del archivo para buscar: " archivo_cadena
            if [ -e "$archivo_cadena" ]; then
                read -p "Introduzca la cadena a buscar: " cadena
                if grep -q "$cadena" "$archivo_cadena"; then
                    echo "La cadena '$cadena' se encuentra en el archivo $archivo_cadena"
                else
                    echo "La cadena '$cadena' no está en el archivo $archivo_cadena"
                fi
            else
                echo "El archivo $archivo_cadena no existe"
            fi
            ;;
        4)
            echo "Programa finalizado";exit 0
            ;;
        *)
            echo "ERROR. Opción no válida"
            ;;
    esac
done
