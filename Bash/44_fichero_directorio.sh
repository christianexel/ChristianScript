#!/bin/bash

# Ejercicio 44
# Enunciado: Recibe una ruta e indica si es fichero, directorio o no existe.

if [ -f "$1" ]; then
    echo "Es un fichero"
elif [ -d "$1" ]; then
    echo "Es un directorio"
else
    echo "No existe o no es fichero ni directorio"
fi
