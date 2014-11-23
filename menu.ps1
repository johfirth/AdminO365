 function areyousure {$areyousure = read-host "Are you sure you want to exit? (y/n)"  
           if ($areyousure -eq "y"){exit}  
           if ($areyousure -eq "n"){mainmenu}  
           else {write-host -foregroundcolor red "Invalid Selection"   
                 areyousure  
                }  
                     }  
 
 function mainmenu{  
 cls  
 echo "---------------------------------------------------------"  
 echo ""  
 echo ""  
 echo "    1. Import Users"  
 echo "    2. Import Contacts"
 echo "    3. Change Password"
 echo "    4. Change All Passwords"
 echo "    5. Change Mailbox"
 echo "    6. Exit"  
 echo ""  
 echo ""  
 echo "---------------------------------------------------------"  
 $answer = read-host "Please Make a Selection"  
 if ($answer -eq 1){Invoke-Expression C:\data\adminO365\ImpUsr.ps1}  
 if ($answer -eq 2){Invoke-Expression C:\data\adminO365\ImpCon.ps1}  
 if ($answer -eq 3){Invoke-Expression C:\data\adminO365\SglPass.ps1}
 if ($answer -eq 4){Invoke-Expression C:\data\adminO365\AllPass.ps1}
 if ($answer -eq 5){Invoke-Expression C:\data\adminO365\CngMail.ps1}
 if ($answer -eq 6){areyousure}
 else {write-host -ForegroundColor red "Invalid Selection"  
       sleep 5  
       mainmenu  
      }  
                }  
 mainmenu  