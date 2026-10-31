#!/bin/bash
# christiansp31-5.sh - Informe de líneas con "error" o "fail" en /var/log
INFORME="$(dirname "$0")/informe_errores.txt"
: > "$INFORME"                       # vacía el informe

# Recorre todos los archivos de /var/log
while read -r f; do
    # grep: -I ignora binarios, -i no distingue mayúsculas
    lineas=$(grep -iIE "error|fail" "$f" 2>/dev/null)
    if [ -n "$lineas" ]; then
        # Cabecera que separa visualmente cada archivo de origen
        {
            echo "=================================================="
            echo "ARCHIVO: $f"
            echo "=================================================="
            echo "$lineas"
            echo
        } >> "$INFORME"
    fi
done < <(find /var/log -type f 2>/dev/null)

echo "Informe generado en $INFORME"
