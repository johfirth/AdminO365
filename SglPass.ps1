$User = Read-Host 'Please enter the username that you would like to change (Example John@Doe.com)'

$Pass = Read-Host 'Please enter what you would like the password to be'

Set-MsolUserPassword –UserPrincipalName  $User –NewPassword $Pass -ForceChangePassword 0

Invoke-Expression C:\data\adminO365\menu.ps1