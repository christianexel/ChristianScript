#!/bin/bash

# Ejercicio 37
# Enunciado: Suma los tamaños en bytes de los ficheros del directorio actual usando ls -l y awk.

# Suma la columna de tamaño de los ficheros regulares visibles.
ls -l -- * 2>/dev/null | awk '$1 ~ /^-/ {suma += $5} END {print "Total en bytes:", suma+0}'
