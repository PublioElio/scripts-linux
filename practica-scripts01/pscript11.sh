#!/bin/bash

mostrar_fecha() {
    fecha=$1

    if [[ $fecha =~ ^[0-9]{2}-[0-9]{2}-[0-9]{4}$ ]]; then
        
        dia=${fecha:0:2}
        mes=${fecha:3:2}
        anyo=${fecha:6:4}
                
        echo "Formato 1: $dia/$mes/$anyo"
        fecha_inglesa="$anyo-$mes-$dia"
        echo "Formato 2: $fecha_inglesa"
        echo "Formato 3: $dia de $(date -d "$fecha_inglesa" "+%B") de $anyo"
        echo "Formato 4: $dia$mes$anyo"
        echo "Formato 5: $fecha 00:00:00"
        echo "------------------------------"
    else
        echo "ERROR: formato de fecha no válido"
    fi
}

for ((i=1; i<=5; i++)); do
    read -p "Introduzca una fecha (formato DD-MM-YYYY): " fecha_introducida
    mostrar_fecha "$fecha_introducida"
done
