write-host "Nuget Install"

Install-PackageProvider -Name NuGet -force
write-host ""

write-host "PSWindowsUpdate Install"

Install-Module -Name PSWindowsUpdate –Force

write-host ""

Get-Package -Name PSWindowsUpdate