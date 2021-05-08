################################
#  WinRM Configuration
###################################
# powershell -ExecutionPolicy Bypass -File a:\Config_WinRM.ps1

#Start-Process -Wait -Verb RunAs -PassThru -FilePath "netsh" -ArgumentList "advfirewall set allprofiles state off" | Out-Null
netsh advfirewall set  allprofiles state off
#netsh advfirewall firewall set rule group="Windows Remote Administration" new enable=yes
#netsh advfirewall firewall set rule name="Windows Remote Management (HTTP-In)" new enable=yes action=allow


$profile = Get-NetConnectionProfile
Set-NetConnectionProfile -Name $profile.Name -NetworkCategory Private

Enable-PSRemoting –Force
winrm quickconfig –q
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

