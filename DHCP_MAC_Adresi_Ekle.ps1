[string]$title = 'MAC Adresi Ekle'
$host.ui.RawUI.WindowTitle = "$title"
Clear-Host
Write-Host "=== $Title === `n" -foregroundcolor Yellow
$scope = Read-Host "`n Hangi Scope'a Eklenecek? "
$ip = Read-Host " Hangi IP Adresine Rezerve Edilecek? "
$mac = Read-Host " MAC Adresi? "
$descr = Read-Host " Rezerve Açıklaması "
Write-host "`n"
Add-DhcpServerv4Reservation -ScopeID $scope -IPaddress $ip -ClientID $mac -Description $descr -Name $descr
Get-DhcpServerv4Scope | Get-DhcpServerv4Lease -EA SilentlyContinue -ClientId $mac