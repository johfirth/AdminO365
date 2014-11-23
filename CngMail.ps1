" Mail Box Switch "
$User = read-host 'Please enter the mailbox you would like to switch'
 function MailboxMenu{  
 cls  
 echo "---------------------------------------------------------"  
 echo ""  
 echo ""  
 echo "    1. Change to Shared Mailbox"  
 echo "    2. Change to User Mailbox"
 echo ""
 echo ""  
 echo ""  
 echo "---------------------------------------------------------"  
 $answer = read-host "Please Make a Selection"  
 if ($answer -eq 1){Set-Mailbox $User -Type:Shared}  
 if ($answer -eq 2){Set-Mailbox $User -Type:Regular}  
  else {write-host -ForegroundColor red "Invalid Selection"  
       sleep 5  
       MailboxMenu  
       }  
                }  
				
Invoke-Expression C:\data\adminO365\menu.ps1