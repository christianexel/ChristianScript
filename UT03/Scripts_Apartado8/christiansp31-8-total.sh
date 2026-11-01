#!/bin/bash
# Copia total mensual de /home; actualiza la marca que usan las diferenciales
touch /bacchristian/.marca_total
tar -czf /bacchristian/CopTot-$(date +%B-%Y).tar.gz -C / home
