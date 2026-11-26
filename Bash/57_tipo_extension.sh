#!/bin/bash

# Ejercicio 57
# Enunciado: Recibe un fichero y clasifica .txt, .sh, .jpg, .png u otra extensión.

if [ $# -eq 0 ]; then
    echo "Uso: $0 fichero"
    exit 1
fi
# Compara la extensión del nombre.
case "$1" in
    *.txt) echo "Texto" ;;
    *.sh) echo "Script" ;;
    *.jpg|*.png) echo "Imagen" ;;
    *) echo "Tipo desconocido" ;;
esac
