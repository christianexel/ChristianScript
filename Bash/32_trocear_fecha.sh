#!/bin/bash

# Ejercicio 32
# Enunciado: Extrae día, mes y año de date +%d/%m/%Y usando cut.

fecha=$(date +%d/%m/%Y)
# Separa los tres campos usando /.
echo "Día: $(echo "$fecha" | cut -d/ -f1)"
echo "Mes: $(echo "$fecha" | cut -d/ -f2)"
echo "Año: $(echo "$fecha" | cut -d/ -f3)"
