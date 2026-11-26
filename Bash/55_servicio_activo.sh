#!/bin/bash

# Ejercicio 55
# Enunciado: Recibe un servicio y comprueba con systemctl is-active si está activo.

if [ $# -eq 0 ]; then
    echo "Uso: $0 servicio"
    exit 1
fi
# Comprueba el estado del servicio.
if systemctl is-active --quiet "$1"; then
    echo "El servicio $1 está activo."
else
    echo "El servicio $1 no está activo."
fi
