$InterfejsID="Ethernet0"
$newIP="192.168.1.123"
$Gateway="192.168.1.1"
$DNS="192.168.1.1"

$null=New-NetIPAddress -InterfaceAlias $InterfejsID -IPAddress $newIP -PrefixLength 24 -DefaultGateway $Gateway

Set-DnsClientServerAddress -InterfaceAlias $InterfejsID -ServerAddresses $DNS
