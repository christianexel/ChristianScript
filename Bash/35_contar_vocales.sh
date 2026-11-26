#!/bin/bash

# Ejercicio 35
# Enunciado: Pide un fichero y cuenta todas sus vocales usando tr y wc.

read -r -p "Nombre del fichero: " fichero
if [ ! -f "$fichero" ]; then
    echo "No existe el fichero."
    exit 1
fi
# Deja solo las vocales y cuenta los caracteres.
echo "Vocales: $(tr -cd 'aeiouAEIOUáéíóúÁÉÍÓÚüÜ' < "$fichero" | wc -m)"
