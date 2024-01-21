#!/bin/bash

validar_numero() {
    local valor=$1
    if ! [[ "$valor" =~ ^[0-9]+$ ]]; then
        echo "ERROR. Debe introducir un número válido"; exit 1
    fi
}

read -p "Introduce el primer valor: " valor1
validar_numero "$valor1"

read -p "Introduce el segundo valor: " valor2
validar_numero "$valor2"

cuadrado_suma=$((valor1 * valor1 + valor2 * valor2))
hipotenusa=$(bc <<< "sqrt($cuadrado_suma)")
echo "Para los valores $valor1 y $valor2, la hipotenusa es: $hipotenusa"
