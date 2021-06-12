Clear-Host

Write-Output "uruchamianie XML parse XmlContent.ps1"

.\script\XmlContent.ps1

Write-Output "uruchamianie Packer Zmienne.json VM-Win10.json"

packer build -force -var-file=".\Zmienne.json" ".\VM-Win10.json"