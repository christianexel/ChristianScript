#!/bin/bash

# Ejercicio 50
# Enunciado: Pide dos cadenas, comprueba si la primera está vacía y si son iguales.

read -r -p "Primera cadena: " a
read -r -p "Segunda cadena: " b
if [ -z "$a" ]; then
    echo "La primera cadena está vacía"
fi
if [ "$a" = "$b" ]; then
    echo "Son iguales"
else
    echo "Son distintas"
fi
