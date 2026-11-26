#!/bin/bash

# Ejercicio 36
# Enunciado: Crea un informe de nombre de máquina, usuarios humanos y total usando tee.

# Considera usuarios humanos los de UID entre 1000 y 59999.
{
    echo "Máquina: $(hostname)"
    echo "Usuarios humanos:"
    awk -F: '$3 >= 1000 && $3 < 60000 {print $1}' /etc/passwd
    echo "Total: $(awk -F: '$3 >= 1000 && $3 < 60000 {n++} END {print n+0}' /etc/passwd)"
} | tee informe.txt
