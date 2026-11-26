#!/bin/bash

# Ejercicio 42
# Enunciado: Pide un número entero y dice si es par o impar usando módulo.

read -r -p "Número entero: " numero
# El resto de dividir por 2 indica si es par.
if (( numero % 2 == 0 )); then
    echo "Par"
else
    echo "Impar"
fi
