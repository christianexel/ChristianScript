#!/bin/bash

# Ejercicio 33
# Enunciado: Muestra los 5 archivos o carpetas que más ocupan dentro del HOME.

# Calcula tamaños, ordena y muestra los cinco mayores.
du -ah "$HOME" 2>/dev/null | sort -hr | head -n 5
