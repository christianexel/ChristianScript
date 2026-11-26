#!/bin/bash

# Ejercicio 58
# Enunciado: Pide una edad e indica si está en edad laboral entre 16 y 67 años incluidos.

read -r -p "Edad: " edad
if ! [[ "$edad" =~ ^[0-9]+$ ]]; then
    echo "Edad no válida"
    exit 1
fi
# Comprueba los dos límites.
if (( edad >= 16 && edad <= 67 )); then
    echo "Está en edad laboral"
else
    echo "No está en edad laboral"
fi
