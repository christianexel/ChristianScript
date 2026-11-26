#!/bin/bash

# Ejercicio 40
# Enunciado: Muestra las shells distintas de /etc/passwd y cuántos usuarios tiene cada una.

# Extrae, ordena y cuenta el campo de shell.
cut -d: -f7 /etc/passwd | sort | uniq -c
