#!/bin/bash

if [ $# -eq 0 ]; then
  echo "ERROR. Debe proporcionar un nombre de usuario";exit 1
fi

usuario=$1

if who | grep -wq "$usuario"; then
  echo "El usuario $usuario está conectado"
else
  echo "El usuario $usuario no está conectado"
fi