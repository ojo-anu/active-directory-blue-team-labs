Import-Csv C:\AD-Lab\scripts\users_sample.csv | ForEach-Object {
    $user = $_
    
    if ($user.Department -eq "IT") {
        $OU = "OU=IT,DC=corp,DC=lab"
        $group = "IT_Admins"
    }
    elseif ($user.Department -eq "HR") {
        $OU = "OU=HR,DC=corp,DC=lab" 
        $group = "HR_Users"
    }
    elseif ($user.Department -eq "Finance") {
        $OU = "OU=Finance,DC=corp,DC=lab"
        $group = "Finance_Users"
    }

    $password = ConvertTo-SecureString "P@ssw0rd123" -AsPlainText -Force
    
    New-ADUser -Name "$($user.FirstName) $($user.LastName)" `
               -GivenName $user.FirstName `
               -Surname $user.LastName `
               -SamAccountName $user.SamAccountName `
               -Path $OU `
               -AccountPassword $password `
               -Enabled $true
               
    Add-ADGroupMember -Identity $group -Members $user.SamAccountName
}