#!/bin/bash

# Ejercicio 43
# Enunciado: Recibe un fichero como parámetro, comprueba si existe y exige un parámetro.

# Comprueba que se pase un nombre.
if [ $# -eq 0 ]; then
    echo "Uso: $0 fichero"
    exit 1
fi
if [ -e "$1" ]; then
    echo "Existe"
else
    echo "No existe"
fi
