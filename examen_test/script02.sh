#!/bin/bash

factorial() {
    if [ $1 -eq 0 ] || [ $1 -eq 1 ]; then
        echo 1
    else
        echo $(( $1 * $(factorial $(( $1 - 1 ))) ))
    fi
}

suma_cubos() {
    echo $(( $1**3 + $2**3 ))
}

mostrar_secuencia() {
    for (( i=$1; i<=$2; i++ )); do
        echo -n "$i "
    done
    echo
}

echo "Menú:"
echo "a) Factorial"
echo "b) Suma cubos"
echo "c) Secuencia"
echo "d) Salir"

read -p "Seleccione una opción (a/b/c/d): " opcion


case $opcion in
    a)
        read -p "Introduzca el primer número: " n1
        resultado=$(factorial $n1)
        echo "El factorial de $n1 es: $resultado"
        ;;
    b)
        read -p "Introduzca el primer número: " n1
        read -p "Introduzca el segundo número: " n2
        resultado=$(suma_cubos $n1 $n2)
        echo "La suma de los cubos de $n1 y $n2 es: $resultado"
        ;;
    c)
        read -p "Introduzca el primer número: " n1
        read -p "Introduzca el segundo número: " n2
        echo "La secuencia entre $n1 y $n2 es:"
        mostrar_secuencia $n1 $n2
        ;;
    d)
        echo "Saliendo del programa."
        ;;
    *)
        echo "Opción no válida."
        ;;
esac
