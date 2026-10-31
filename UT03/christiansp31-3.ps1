# christiansp31-3.ps1 - Menú dinámico de registros de eventos
$logs = Get-EventLog -List        # el menú sale de los registros de ESTA máquina

do {
    Write-Host "`n MENÚ DE REGISTROS" -ForegroundColor Cyan
    for ($i = 0; $i -lt $logs.Count; $i++) {
        Write-Host ("{0}. {1}" -f ($i + 1), $logs[$i].Log)
    }
    Write-Host "0. Salir"
    $op = Read-Host "Elige una opción"

    if ($op -eq '0') {
        Write-Host "Saliendo..."
    }
    elseif ($op -match '^\d+$' -and [int]$op -ge 1 -and [int]$op -le $logs.Count) {
        $elegido = $logs[[int]$op - 1]
        Write-Host "`nRegistro: $($elegido.Log) - Total de eventos: $($elegido.Entries.Count)" -ForegroundColor Yellow
        Get-EventLog -LogName $elegido.Log -Newest 12 | Format-Table TimeGenerated, EntryType, Source, Message -AutoSize
    }
    else {
        Write-Host "Opción no válida" -ForegroundColor Red
    }
} while ($op -ne '0')
