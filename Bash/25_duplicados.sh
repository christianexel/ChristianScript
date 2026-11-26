#!/bin/bash

# Ejercicio 25
# Enunciado: Crea un fichero de nombres y los muestra ordenados y sin repetir.

# Crea un fichero con nombres repetidos.
printf 'Ana\nLuis\nAna\nPedro\nLuis\n' > nombres.txt
# Ordena y elimina duplicados.
sort -u nombres.txt
