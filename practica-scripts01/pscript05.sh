#!/bin/bash

echo -n "Ingrese la ruta completa del archivo: ";read -r file

if [ -r "$file" ]; then
    read -p "Ingrese la ruta completa del directorio de destino: " dir
    cp "$file" "$dir"
    echo "Archivo copiado con éxito."
else
    echo "No se puede leer el archivo. Verifica la ruta y los permisos."
fi

