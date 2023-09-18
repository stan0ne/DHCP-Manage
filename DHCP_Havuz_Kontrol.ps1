[string]$title = 'DHCP Havuzuna Gözat'
$host.ui.RawUI.WindowTitle = "$title"
Clear-Host
Write-Host "=== $Title === `n" -foregroundcolor Yellow
$scope = Read-Host "`n Hangi Havuz Kontrol Edilecek? "
Get-DhcpServerv4Lease -ScopeId $scope -AllLeases