#!/bin/bash

# Ejercicio 27
# Enunciado: Crea un fichero con Windows y sustituye todas sus apariciones por Linux.

# Crea el fichero de ejemplo.
printf 'Uso Windows\nWindows y Windows\nAdiós Windows\n' > sistemas.txt
# Sustituye y muestra el resultado.
sed 's/Windows/Linux/g' sistemas.txt
