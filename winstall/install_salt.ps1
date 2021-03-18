[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls"
Invoke-WebRequest -Uri https://winbootstrap.saltproject.io -OutFile C:\Temp\bootstrap-salt.ps1
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
C:\Temp\bootstrap-salt.ps1 -pythonVersion 3 -master vr-ssc.lab.local
Set-ExecutionPolicy -ExecutionPolicy Undefined -Scope CurrentUser
c:\salt\salt-call --local grains.set autosign_key 7n.sxfVATE@B83zhL7LUMit*2H289kuMYUn@3y-cDHYy@7-ER6uzhoEMk8*qrWf!zitpbQDb@hBa3fUzc@WQEDWR6h6wCbN!YQUX
add-content c:\salt\conf\minion "`nautosign_grains:"
add-content c:\salt\conf\minion "`n  - autosign_key"
restart-computer