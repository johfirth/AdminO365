Import-Module MSOnline
Connect-MsolService
$UserCredential = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection
Set-executionPolicy unrestricted
Import-PSSession $Session

Set-Location C:\data\adminO365
#set location has to happen

Invoke-Expression C:\data\adminO365\menu.ps1


