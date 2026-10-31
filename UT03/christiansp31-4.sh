#!/bin/bash
# christiansp31-4.sh - Desinstala los programas listados en programas.txt
DIR="$(cd "$(dirname "$0")" && pwd)"      # directorio del propio script
FICHERO="$DIR/programas.txt"

[ -f "$FICHERO" ] || { echo "No existe $FICHERO"; exit 1; }

while IFS= read -r prog || [ -n "$prog" ]; do
    prog="${prog%$'\r'}"                  # quita salto de línea de Windows
    [ -z "$prog" ] && continue            # ignora líneas vacías
    if dpkg -l "$prog" 2>/dev/null | grep -q '^ii'; then
        echo ">> Desinstalando $prog ..."
        apt-get purge -y "$prog" < /dev/null   # < /dev/null evita que apt consuma el fichero
    else
        echo "!! $prog NO está instalado, se continúa con el siguiente"
    fi
done < "$FICHERO"
echo "Proceso terminado."
