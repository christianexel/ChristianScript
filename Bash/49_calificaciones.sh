#!/bin/bash

# Ejercicio 49
# Enunciado: Pide una nota de 0 a 10 y muestra su calificación, validando el valor.

read -r -p "Nota (0-10): " nota
# Acepta solo notas enteras entre 0 y 10.
if ! [[ "$nota" =~ ^([0-9]|10)$ ]]; then
    echo "Nota no válida"
    exit 1
fi
if (( nota < 5 )); then
    echo "Insuficiente"
elif (( nota == 5 )); then
    echo "Suficiente"
elif (( nota == 6 )); then
    echo "Bien"
elif (( nota < 9 )); then
    echo "Notable"
else
    echo "Sobresaliente"
fi
