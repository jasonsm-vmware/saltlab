[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls"
Invoke-WebRequest -Uri https://winbootstrap.saltproject.io -OutFile C:\Temp\bootstrap-salt.ps1
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
C:\Temp\bootstrap-salt.ps1 -pythonVersion 3 -master vrassm.lab.local
Set-ExecutionPolicy -ExecutionPolicy Undefined -Scope CurrentUser
restart-computer