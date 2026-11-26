#!/bin/bash

# Ejercicio 34
# Enunciado: Muestra las líneas 5 a 10 de /etc/passwd de dos formas.

echo "Con head y tail:"
head -n 10 /etc/passwd | tail -n 6
echo "Con sed:"
sed -n '5,10p' /etc/passwd
