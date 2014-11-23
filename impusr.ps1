$path = Read-Host 'Please enter the file path for your import-users .CSV' 

$Server = Read-Host 'Please Input your server information'

import-csv $path | foreach { 
New-Msoluser -userPrincipalName $_.UserPrincipalName -displayname $_.displayname -firstname $_.firstname -lastname $_.lastname -password $_.Password -usagelocation "us" 
}

invoke-expression C:\data\adminO365\menu.ps1