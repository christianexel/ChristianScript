#!/bin/bash

# Ejercicio 21
# Enunciado: Muestra solo los nombres de usuario de /etc/passwd usando cut.

# Extrae el primer campo (usuario).
cut -d: -f1 /etc/passwd
