$JsonLoad    =  Get-Content .\Zmienne.json | ConvertFrom-Json
$pathROOT    = (Get-Location).Path
$pathBaseXML = '\answer_files\Autounattend_template.xml'

$pathLoad= $pathROOT + $pathBaseXML
$pathSave= $pathROOT + "\Autounattend.xml"

$file = [xml](Get-Content $pathLoad)

$file.unattend.settings[1].component.ComputerName = $JsonLoad.vmware_Name

$file.Save($pathSave)
Write-Host ""
Write-Output "Uzywane nazwy do pliku XML"
$JsonLoad.vmware_Name

Write-Host ""


