#!/bin/bash

# Ejercicio 56
# Enunciado: Pide un año e indica si es bisiesto según las reglas de divisibilidad.

read -r -p "Introduce un año: " anio
if ! [[ "$anio" =~ ^[0-9]+$ ]]; then
    echo "Año no válido"
    exit 1
fi
# Divisible por 400, o por 4 pero no por 100.
if (( anio % 400 == 0 || (anio % 4 == 0 && anio % 100 != 0) )); then
    echo "Es bisiesto"
else
    echo "No es bisiesto"
fi
