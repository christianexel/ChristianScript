#!/bin/bash

# Ejercicio 46
# Enunciado: Pide dos números e indica cuál es mayor o si son iguales.

read -r -p "Primer número: " a
read -r -p "Segundo número: " b
if (( a > b )); then
    echo "$a es mayor"
elif (( b > a )); then
    echo "$b es mayor"
else
    echo "Son iguales"
fi
