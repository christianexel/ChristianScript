#!/bin/bash

# Ejercicio 41
# Enunciado: Pide un número e indica si es positivo, negativo o cero.

read -r -p "Número entero: " numero
if (( numero > 0 )); then
    echo "Positivo"
elif (( numero < 0 )); then
    echo "Negativo"
else
    echo "Cero"
fi
