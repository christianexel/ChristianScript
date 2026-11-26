#!/bin/bash

# Ejercicio 22
# Enunciado: Muestra usuario y shell, separados por una tabulación, usando awk -F:.

# Muestra el primer y el séptimo campo.
awk -F: '{print $1 "\t" $7}' /etc/passwd
