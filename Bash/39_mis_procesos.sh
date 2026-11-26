#!/bin/bash

# Ejercicio 39
# Enunciado: Muestra PID y comando de los procesos del usuario actual ordenados por PID.

# Selecciona los procesos del usuario actual.
ps -u "$(id -un)" -o pid=,comm= --sort=pid
