#!/bin/bash

# Ejercicio 38
# Enunciado: Pide palabra y fichero, cuenta las líneas que contienen la palabra y las muestra numeradas.

read -r -p "Palabra: " palabra
read -r -p "Fichero: " fichero
if [ ! -f "$fichero" ]; then
    echo "No existe el fichero."
    exit 1
fi
# Busca el texto literalmente y muestra números de línea.
echo "Líneas encontradas: $(grep -F -c -- "$palabra" "$fichero")"
grep -F -n -- "$palabra" "$fichero" || true
