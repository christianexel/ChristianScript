#!/bin/bash
# christiansp31-9.sh - Espejo exacto del directorio personal con rsync
# -a conserva permisos y fechas; --delete borra en el espejo lo borrado en origen; -v muestra los cambios
mkdir -p /bacchristian/espejo
rsync -av --delete /home/christian/ /bacnombre/christian/
