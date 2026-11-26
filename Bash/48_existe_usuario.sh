#!/bin/bash

# Ejercicio 48
# Enunciado: Pide un usuario y comprueba si existe en el sistema.

read -r -p "Nombre de usuario: " usuario
# id devuelve éxito si el usuario existe.
if id "$usuario" >/dev/null 2>&1; then
    echo "El usuario existe"
else
    echo "El usuario no existe"
fi
