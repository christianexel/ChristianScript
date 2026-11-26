#!/bin/bash

# Ejercicio 53
# Enunciado: Pide una única letra y dice si es vocal o consonante usando case.

read -r -p "Introduce una letra: " letra
# Comprueba que sea solo una letra.
if ! [[ "$letra" =~ ^[[:alpha:]]$ ]]; then
    echo "Debes introducir una única letra."
    exit 1
fi
case "$letra" in
    [aeiouAEIOUáéíóúÁÉÍÓÚ]) echo "Vocal" ;;
    *) echo "Consonante" ;;
esac
