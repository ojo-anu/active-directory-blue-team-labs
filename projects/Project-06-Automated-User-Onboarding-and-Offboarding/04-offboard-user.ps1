Import-Module ActiveDirectory
$Server = "corp.lab"
$UserDN = "CN=John Carter,OU=HR,DC=corp,DC=lab"
$DisabledOU = "OU=Disabled Users,DC=corp,DC=lab"

# Create OU if missing
if (!(Get-ADOrganizationalUnit -Filter {Name -eq "Disabled Users"} -Server $Server -ErrorAction SilentlyContinue)) {
    New-ADOrganizationalUnit -Name "Disabled Users" -Path "DC=corp,DC=lab" -Server $Server
}

Disable-ADAccount -Identity $UserDN -Server $Server
Set-ADUser -Identity $UserDN -Description "Offboarded $(Get-Date -Format 'yyyy-MM-dd')" -Server $Server
Move-ADObject -Identity $UserDN -TargetPath $DisabledOU -Server $Server
Write-Host "John Carter has been disabled and moved"