@echo off
echo uuid
powershell -command "Get-WmiObject Win32_ComputerSystemProduct | Select-Object -ExpandProperty UUID"
echo.
echo disk serials
powershell -command "Get-WmiObject Win32_DiskDrive | Select-Object Model, SerialNumber | Format-List"
echo.
echo mac
powershell -command "Get-NetAdapter | Where-Object {$_.Status -eq 'Up'} | Select-Object -ExpandProperty MacAddress"
echo.
echo bios serial
powershell -command "Get-WmiObject Win32_BIOS | Select-Object -ExpandProperty SerialNumber"
echo.
echo motherboard serial
powershell -command "Get-WmiObject Win32_BaseBoard | Select-Object -ExpandProperty SerialNumber"
echo motherboard product:
powershell -command "Get-WmiObject Win32_BaseBoard | Select-Object -ExpandProperty Product"
echo.
echo cpu id
powershell -command "Get-WmiObject Win32_Processor | Select-Object -ExpandProperty ProcessorId"
echo cpu name
powershell -command "Get-WmiObject Win32_Processor | Select-Object -ExpandProperty Name"
echo.
echo gpu
powershell -command "Get-WmiObject Win32_VideoController | Select-Object Name, DriverVersion | Format-List"
echo.
echo ram serial
powershell -command "Get-WmiObject Win32_PhysicalMemory | Select-Object SerialNumber | Format-List"
echo.
pause
