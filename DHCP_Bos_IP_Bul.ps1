[string]$title = 'Boş IP Bul (10adet)'
$host.ui.RawUI.WindowTitle = "$title"
Clear-Host
Write-Host "=== $Title === `n" -foregroundcolor Yellow
$scope = Read-Host "`n Hangi Scope'a Bakılacak? "
Get-DhcpServerv4FreeIPAddress -ScopeID $scope -NumAddress 10
#Get-DhcpServerv4FreeIPAddress -ScopeID $scope -StartAddress 10.20.37.110 -EndAddress 10.20.37.125 -NumAddress 5