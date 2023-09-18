[string]$title = 'MAC Adresini Bul'
$host.ui.RawUI.WindowTitle = "$title"
Clear-Host
Write-Host "=== $Title === `n" -foregroundcolor Yellow
$macaddr = Read-Host "`n Mac Adresini Girin "
Get-DhcpServerv4Scope | Get-DhcpServerv4Lease -EA SilentlyContinue -ClientId "$macaddr" |
select-object IPAddress,ClientId,HostName,Description 