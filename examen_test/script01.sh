#!/bin/bash

[ $# -eq 0 ] && read -p "Introduce una palabra: " input || input="$1"

if [[ $input =~ ^[0-9]+$ ]]; then
    echo "La entrada '$input' es un número, finalizando programa";exit 1
fi

# La palabra introducida es un fichero
if [ -f "$input" ]; then 
    echo "La entrada '$input' es un fichero"

    while true; do
        echo -e "Menú:\na) Buscar una palabra en el fichero\nb) Mostrar el contenido del fichero\nc) Salir"
        read -p "Seleccione una opción (a/b/c): " option

        case "$option" in
        a)
            read -p "Introduce la palabra a buscar: " word
            clear
            grep -q "$word" "$input"
            if [ $? -eq 0 ]; then
                echo "La palabra '$word' se encontró en el fichero"
            else
                echo "La palabra '$word' no se encontró en el fichero"
            fi
            ;;
        b)
            clear
            echo -e "\nContenido del fichero '$input':"
            cat "$input";echo
            ;;
        c)
            clear
            echo "Programa finalizado";exit 0
            ;;
        *)
            clear
            echo "Opción no válida. Inténtalo de nuevo"
            ;;
        esac
    done

# La palabra introducida es un directorio
elif [ -d "$input" ]; then
    echo "La entrada '$input' es un directorio"

    while true; do
        echo -e "Menú:\na) Buscar un archivo en el directorio\nb) Ordenar de forma inversa el contenido del directorio\nc) Salir"
        read -p "Seleccione una opción (a/b/c): " option

        case "$option" in
            a)
                read -p "Introduce el nombre del archivo a buscar: " file_name
                clear
                if [ -e "$input/$file_name" ]; then
                    echo "El archivo '$file_name' se encontró en el directorio"
                else
                    echo "El archivo '$file_name' no se encontró en el directorio"
                fi
                ;;
            b)
                clear
                echo -e "\nContenido del directorio '$input' de forma inversa:"
                ls -lhr "$input"
                ;;
            c)
                clear
                echo "Programa finalizado";exit 0
                ;;
            *)
                clear
                echo "Opción no válida. Inténtalo de nuevo"
                ;;
        esac
    done    
else
    echo "La palabra introducida no se corresponde con ningun fichero o directorio"
    echo "$input" >> noficheros.dat
fi
