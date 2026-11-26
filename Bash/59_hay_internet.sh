#!/bin/bash

# Ejercicio 59
# Enunciado: Hace un solo ping a 8.8.8.8 y decide con el código de salida $?.

# Envía un solo ping (máximo 3 segundos).
ping -c 1 -W 3 8.8.8.8 >/dev/null 2>&1
resultado=$?
if [ "$resultado" -eq 0 ]; then
    echo "Hay conexión con 8.8.8.8"
else
    echo "No hay respuesta de 8.8.8.8"
fi
