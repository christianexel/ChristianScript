#!/bin/bash

# Traducimos directamente el parámetro con un case (el asterisco maneja los errores)
case "$1" in
    emergente)   num=0 ;;
    alerta)      num=1 ;;
    critico)     num=2 ;;
    error)       num=3 ;;
    advertencia) num=4 ;;
    noticia)     num=5 ;;
    informacion) num=6 ;;
    depuracion)  num=7 ;;
    *)
        echo "Uso: $0 [emergente|alerta|critico|error|advertencia|noticia|informacion|depuracion]"
        exit 1
        ;;
esac

# Archivo de salida en la carpeta personal
fichero="$HOME/logs_$1.txt"

# Sacamos los logs del mes actual con journalctl
journalctl -p $num..$num --since "$(date +%Y-%m-01)" --no-pager > "$fichero"

# Contamos líneas y mostramos por pantalla
total=$(wc -l < "$fichero")
echo "Registros de nivel $1 este mes: $total"
echo "Guardado en: $fichero"
