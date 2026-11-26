#!/bin/bash

# Ejercicio 28
# Enunciado: Muestra la línea del usuario con el UID más alto de /etc/passwd.

# Ordena por el tercer campo (UID) y toma el último.
sort -t: -k3,3n /etc/passwd | tail -n 1
