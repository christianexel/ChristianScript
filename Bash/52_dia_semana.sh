#!/bin/bash

# Ejercicio 52
# Enunciado: Pide un número del 1 al 7 y muestra el día correspondiente usando case.

read -r -p "Número (1-7): " numero
case "$numero" in
    1) echo "Lunes" ;;
    2) echo "Martes" ;;
    3) echo "Miércoles" ;;
    4) echo "Jueves" ;;
    5) echo "Viernes" ;;
    6) echo "Sábado" ;;
    7) echo "Domingo" ;;
    *) echo "Número no válido" ;;
esac
