#!/bin/bash

# Ejercicio 47
# Enunciado: Exige exactamente dos parámetros y los muestra numerados; si no, sale con 1.

if [ $# -ne 2 ]; then
    echo "Uso: $0 parametro1 parametro2"
    exit 1
fi
echo "Parámetro 1: $1"
echo "Parámetro 2: $2"
