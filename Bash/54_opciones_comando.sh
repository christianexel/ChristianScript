#!/bin/bash

# Ejercicio 54
# Enunciado: Acepta -f (fecha), -u (usuario), -d (directorio) o -h (ayuda) como primer parámetro.

# Ejecuta la opción indicada.
case "$1" in
    -f) date ;;
    -u) whoami ;;
    -d) pwd ;;
    -h) echo "Uso: $0 {-f|-u|-d|-h}" ;;
    *) echo "Opción no válida. Usa -h para ayuda." ;;
esac
