#!/bin/bash

# Ejercicio 26
# Enunciado: Pide una frase y la muestra en mayúsculas y luego sin espacios.

read -r -p "Escribe una frase: " frase
# Convierte a mayúsculas.
echo "$frase" | tr '[:lower:]' '[:upper:]'
# Quita los espacios.
echo "$frase" | tr -d ' '
