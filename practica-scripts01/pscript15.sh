#!/bin/bash

interrumpir_trabajos() {
    inicio=$1;fin=$2

    for ((trabajo_id = inicio; trabajo_id <= fin; trabajo_id++)); do
        lp -i $trabajo_id -H immediate
        echo "Cancelado trabajo de impresión número $trabajo_id"
    done
}

read -p "Primer trabajo que quiere interrumpir: " inicio
read -p "Último trabajo que quiere interrumpir: " fin

interrumpir_trabajos "$inicio" "$fin"