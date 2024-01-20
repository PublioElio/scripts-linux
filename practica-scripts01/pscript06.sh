#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Ha de introducir al menos dos parámetros";exit 1
fi

cadena1="$1";cadena2="$2"

[ "$cadena1" = "$cadena2" ] && echo "Las cadenas son iguales" || echo "Las cadenas son diferentes"