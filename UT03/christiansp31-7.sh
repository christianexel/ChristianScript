#!/bin/bash
# christiansp31-7.sh - Registra las particiones con uso superior al umbral
UMBRAL=80
LOG=/var/log/nombre-disco.log

# df -P: una línea por partición (se excluyen sistemas virtuales y snaps)
df -P -x tmpfs -x devtmpfs -x squashfs -x overlay | tail -n +2 | while read -r part bloques usado libre uso monta; do
    porcentaje=${uso%\%}             # quita el símbolo %
    if [ "$porcentaje" -gt "$UMBRAL" ]; then
        echo "$(date '+%F %H:%M:%S') $part $porcentaje%" >> "$LOG"
    fi
done
