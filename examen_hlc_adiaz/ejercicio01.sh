#!/bin/bash

factorial() {
    if [ "$1" -eq 0 ] || [ "$1" -eq 1 ]; then
        echo 1
    else
        echo $(( "$1" * $(factorial $(( "$1" - 1 ))) ))
    fi
}

calc_descuento() {
    porcentaje=$(echo "scale=2; $2 / 100" | bc)
    a=$(echo "scale=2; $1 - ($1 * $porcentaje)"| bc)
    echo $a   
}

contador=0
while true
do
    
    echo -e "a) Factorial\nb) Descuento\nc) Salida"
    read -p "Elija una opción (a/b/c): " opcion

    case "$opcion" in
        a)
        contador=$(($contador + 1))
        input=""
        echo "Ha elegido la opción 'factorial'"
        while [[ ! "$input" =~ ^[0-9]+$ ]]
        do
            read -p "Introduzca un número: " input
        done
        clear
        echo "El factorial de $input es $(factorial "$input")"   
        ;;
        b)
        contador=$(($contador + 1))
        descuento=1
        clear
        echo "Ha elegido la opción 'Descuento'"
        read -p "Introduzca un valor para la prenda: " prenda
        while [ "$descuento" -lt 10 ] || [ "$descuento" -gt 50 ]
        do
            read -p "Introduzca un descuento válido(10/50): " descuento
        done
        clear
        echo "El $descuento% de '$prenda' es: $(calc_descuento "$prenda" "$descuento")"
        ;;
        c)
        contador=$(($contador + 1))
        clear
        read -p "¿Está seguro de que desea salir? (s/n): " salir
        if [ $salir == "s" ]; then
            echo "Total de opciones seleccionadas: '$contador'. Finalizando el programa";exit 0
        fi
        ;;
        *)
        echo "entrada no válida"
        ;;
    esac
done