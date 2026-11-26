#!/bin/bash

# Ejercicio 23
# Enunciado: Pide un fichero y muestra su número de líneas, palabras y caracteres.

read -r -p "Nombre del fichero: " fichero
if [ ! -f "$fichero" ]; then
    echo "No existe el fichero."
    exit 1
fi
# Cuenta cada cosa por separado.
echo "Líneas: $(wc -l < "$fichero")"
echo "Palabras: $(wc -w < "$fichero")"
echo "Caracteres: $(wc -m < "$fichero")"
