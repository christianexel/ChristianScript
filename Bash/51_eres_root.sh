#!/bin/bash

# Ejercicio 51
# Enunciado: Comprueba si se ejecuta como root; si no, avisa y sale con código 1.

# root tiene UID 0.
if [ "$(id -u)" -ne 0 ]; then
    echo "Necesitas privilegios de root."
    exit 1
fi
echo "Estás ejecutando como root."
