#!/bin/bash

# Ejercicio 60
# Enunciado: Pide dos números y una operación (+, -, x, /) usando case; evita dividir por cero.

read -r -p "Primer número entero: " a
read -r -p "Segundo número entero: " b
read -r -p "Operación (+, -, x, /): " operacion
# Comprueba que los números sean enteros.
if ! [[ "$a" =~ ^-?[0-9]+$ && "$b" =~ ^-?[0-9]+$ ]]; then
    echo "Debes introducir números enteros."
    exit 1
fi
# Realiza la operación elegida.
case "$operacion" in
    +) echo "Resultado: $((a + b))" ;;
    -) echo "Resultado: $((a - b))" ;;
    x) echo "Resultado: $((a * b))" ;;
    /)
        if (( b == 0 )); then
            echo "No se puede dividir entre cero."
        else
            echo "Resultado: $((a / b))"
        fi ;;
    *) echo "Operación no válida" ;;
esac
