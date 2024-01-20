#!/bin/bash

if [ -z "$1" ]; then
  echo "Debe proporcionar un trabajo de impresión para cancelar";exit 1
fi

trabajo="$1"
cancelar="cancel $trabajo";$cancelar

if [ $? -eq 0 ]; then
  echo "Trabajo de impresión $trabajo cancelado"
else
  echo "ERROR. No se ha podido cancelar: $trabajo"
fi