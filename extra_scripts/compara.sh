#!/bin/bash

read -p "Introduce la primera palabra:" palabra1
read -p "Introduce la segunda palabra:" palabra2

[ "$palabra1" = "$palabra2" ] && echo "Las palabras son iguales." || echo "Las palabras son diferentes."