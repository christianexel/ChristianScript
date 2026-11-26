#!/bin/bash

# Ejercicio 24
# Enunciado: Muestra los usuarios que usan bash y cuenta cuántos son.

# Filtra las líneas cuyo shell acaba en /bash.
grep '/bash$' /etc/passwd
echo "Total: $(grep -c '/bash$' /etc/passwd)"
