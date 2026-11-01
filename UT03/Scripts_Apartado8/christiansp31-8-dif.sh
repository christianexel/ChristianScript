#!/bin/bash
# Copia diferencial semanal de /home: solo lo modificado desde la última copia total
MARCA=/bacchristian/.marca_total
[ -f "$MARCA" ] || touch -d @0 "$MARCA"      # si aún no hay total, copia todo
tar -czf /bacchristian/CopDifSem-$(date +%V).tar.gz --newer="$MARCA" -C / home
