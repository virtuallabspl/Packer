# Maintener
Tomasz Gładkowski
<br>
https://virtuallabs.pl
<br>
virtuallabspl@gmail.com
<br>

# Wersja Aktualizacji
Windows10-advanced

* 1.0 - Podstawowy templejt dla Packera
* 1.1 - Dodanie pliku Zmienne.json wraz z dokonfigurowaniem poleceń
* 1.2 - Modyfikacja pliku Autounattend.xml w locie
* 1.3 - Zmiana wersji OS Windows 10 na 21H1 oraz cała modyfikacja plików wspierających
* 1.4 - Ustawienie statycznego adresu IP przez skrypt PS


# Opis

Budowanie obrazu Virtualnej Maszyny za pomocą narzędzia "Packer" do automatyzacji.
<br>
Sekcja zawiera zmienne środowiskowe **-var-file**

# Środowisko

* packer =1.7.2
* HyperVisor= Vsphere 6.7
* Windows 10 host 

# Windows 10 PRO Guest

* OS Name:                   Microsoft Windows 10 Pro
* OS Version:                10.0.19043 N/A Build 19043 (21H1)
* OS Manufacturer:           Microsoft Corporation
* OS Configuration:          Standalone Workstation

# Pliki konfiguracyjne

Konfiguracja oparta na plikach .json
<br>
* Autounattend.xml = Plik automatyzujący instalację systemu operacyjnego
* VM-Win10.json    = Plik konfiguracyjny dla Packera
* Zmienne.json     = Plik konfiguracyjny ze zmiennymi dla Packera
* Run.ps1          = Uruchomienie Packera wraz z konfiguracją pliku XML
* XmlContent.ps1   = Skrypt modyfikujący plik Autounattend.xml

# Skrypty wspomagające

* Script/Config_WinRM.ps1
* Script/EnvConfigure.ps1
* Script/Install_Modules.ps1
* Script/Set-IP-Address.ps1
* Script/XmlContent.ps1


# Uruchomienie
Konsola PS w katalogu głównym "Windows10-advanced"
<br>
Uruchomienie skryptu .\script\Run.ps1
<br>


