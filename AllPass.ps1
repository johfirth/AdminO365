$pass = Read-Host 'What would you like to set the password to' 

Get-msoluser | set-msoluserpassword -newpassword $pass -forcechangepassword 0

"Passwords have been changed for all users"

Invoke-Expression C:\data\adminO365\menu.ps1