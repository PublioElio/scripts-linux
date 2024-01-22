#!/bin/bash

aciertos=0
partidas=0
while true
do
    
    read -p "Introduzca un fichero o directorio válido: " input

    if [ -d "$input" ]; then
        partidas=$(($partidas + 1))
        total_archivos=$(ls $input | wc -l)
        i=0
        while [ "$i" -lt 2 ]
        do
            read -p "¿Cuántos archivos tiene el directorio? " archivos
            if [ "$archivos" == "$total_archivos" ]; then
                clear
                echo "¡Acertaste! el directorio "$input" tiene "$archivos" archivos"
                i=3
                aciertos=$(($aciertos + 1))
            else
                i=$(($i + 1))
                echo "No has acertado. Número de intentos que te quedan: $((2 - "$i"))"
            fi
        done
    fi

    if [ -f "$input" ]; then
        partidas=$(($partidas + 1))
        total_lineas=$(($(cat "$input" | wc -l) + 1))
        i=0
        while [ "$i" -lt 2 ]
        do
            read -p "¿Cuántas líneas tiene el fichero? " lineas
            if [ "$lineas" == "$total_lineas" ]; then
                clear
                echo "¡Acertaste! el fichero "$input" tiene "$lineas" líneas"
                i=3
                aciertos=$(($aciertos + 1))
            else
                i=$(($i + 1))
                echo "No has acertado. Número de intentos que te quedan: $((2 - "$i"))"
            fi
        done
    fi

    if [ "$partidas" -ge 1 ]; then
        read -p "¿Quiere salir del juego? (s/n) " salir
        if [ "$salir" == "s" ]; then
            clear
            echo -e "Finalizando el juego.\nTotal de aciertos: "$aciertos"\nTotal partidas "$partidas"";exit 0
        fi
    fi

done