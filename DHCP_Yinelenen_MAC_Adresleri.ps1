#Get all the scopes in the Primary Server
# Modify $PrimaryDHCPServer to the name of your DHCP server
$ListofScopesandTheirReservations = @()
#$PrimaryDHCPServer = "dc1"
$Scopes = Get-DhcpServerv4Scope
#$Scopes = Get-DhcpServerv4Scope -ComputerName $PrimaryDHCPServer
 
#For all scopes in the primary server, get the scope options and add them to $ListofSCopesandTheirReservations
foreach ($IndividualScope in $Scopes)
{
 
$ListofScopesandTheirReservations += get-DhcpServerv4Reservation -ScopeId  $IndividualScope.ScopeId
#$ListofScopesandTheirReservations += get-DhcpServerv4Reservation -ComputerName $PrimaryDHCPServer -ScopeId  $IndividualScope.ScopeId
 
}
$DuplicateMACReservations  = $ListofSCopesandTheirReservations| group ClientId | where{$_.count -ge 2}
 
foreach ($item in $DuplicateMACReservations)
{
 $item.group
}
#