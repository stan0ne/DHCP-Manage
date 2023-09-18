[string]$title = 'MAC Listesini Rezerve Et'
$host.ui.RawUI.WindowTitle = "$title"
Clear-Host
Write-Host "=== $Title === `n" -foregroundcolor Yellow
$csv = Import-Csv ".\maclist.csv"

foreach($row in $csv){
    $reservation = @{
        ScopeID     = $row.scopeID
        IPAddress   = $row.ipaddress
        ClientID    = $row.clientID
        Description = $row.description 
        Name = $row.description 
    }

    Add-DhcpServerv4Reservation @reservation
}