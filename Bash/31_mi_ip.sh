#!/bin/bash

# Ejercicio 31
# Enunciado: Muestra únicamente la dirección IP principal de la máquina.

# Toma la primera IP de hostname -I.
hostname -I | awk '{print $1}'
