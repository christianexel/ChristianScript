#!/bin/bash

# Ejercicio 45
# Enunciado: Recibe un fichero y comprueba lectura, escritura y ejecución por separado.

if [ ! -f "$1" ]; then
    echo "Indica un fichero válido."
    exit 1
fi
# Comprueba cada permiso.
[ -r "$1" ] && echo "Tiene lectura" || echo "No tiene lectura"
[ -w "$1" ] && echo "Tiene escritura" || echo "No tiene escritura"
[ -x "$1" ] && echo "Tiene ejecución" || echo "No tiene ejecución"
