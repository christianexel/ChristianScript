# christiansp31-2.ps1 - Inicios de sesion entre dos fechas

param(
    [datetime]$FechaInicio,
    [datetime]$FechaFin
)

# Registro Security, evento 4624 = inicio de sesion correcto.
# Sumo un dia a FechaFin para incluir ese dia completo.
# Properties[5] es el usuario; se excluye SYSTEM.
Get-WinEvent -FilterHashtable @{LogName='Security'; Id=4624; StartTime=$FechaInicio; EndTime=$FechaFin.AddDays(1)} |
Where-Object { $_.Properties[5].Value -ne 'SYSTEM' } |
Select-Object @{N='Dia';E={$_.TimeCreated.ToString('dd/MM/yyyy')}},
              @{N='Hora';E={$_.TimeCreated.ToString('HH:mm:ss')}},
              @{N='Usuario';E={$_.Properties[5].Value}} |
Format-Table -AutoSize
