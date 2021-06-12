################################
#  WinRM Configuration
###################################

netsh advfirewall set  allprofiles state off

$Networkprofile = Get-NetConnectionProfile
Set-NetConnectionProfile -Name $Networkprofile.Name -NetworkCategory Private

Enable-PSRemoting -Force
winrm quickconfig -q
winrm set winrm/config '@{MaxTimeoutms="1800000"}'
winrm set winrm/config/winrs '@{MaxMemoryPerShellMB="800"}'
winrm set winrm/config/service '@{AllowUnencrypted="true"}'
winrm set winrm/config/service/auth '@{Basic="true"}'
winrm set winrm/config/client/auth '@{Basic="true"}'
Set-Item WSMan:\localhost\Client\TrustedHosts -Value "*" -Force

Set-Service winrm -startuptype "auto"

Restart-Service winrm

mkdir c:\testSkryptu

Test-WSMan $env:COMPUTERNAME | Out-File c:\testSkryptu\winrm.txt

