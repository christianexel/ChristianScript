#!/bin/bash

# Ejercicio 30
# Enunciado: Cuenta ficheros y directorios del directorio actual sin ocultos.

# Recorre las entradas visibles de la carpeta actual.
ficheros=0
directorios=0
for entrada in *; do
    [ -f "$entrada" ] && ((ficheros++))
    [ -d "$entrada" ] && ((directorios++))
done
echo "Ficheros: $ficheros"
echo "Directorios: $directorios"
