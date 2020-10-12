$ErrorActionPreference = 'silentlyContinue'

$menu=@"

----------------------------------------------

1.  IT Desktop
2.  PT Desktop
3.  Relativity Desktop
4.  Service Desk Desktop
5.  User Desktop
6.  Vendor Desktop
 
----------------------------------------------

Select a task by number or Q to quit

"@

Write-Host "Select Profile Folder" -ForegroundColor Cyan
$r = Read-Host $menu

Switch ($r) {

            "1" {
                Write-Host "Finding Disabled Profiles on IT Desktop" -ForegroundColor Green
                $items=Get-ChildItem -Path "enter path" | Select-Object name -ExpandProperty name
                $newitems=$items -replace "([a-z]+)\.([a-z]+)", '$2' 

            foreach ($user in $newItems) {
                Get-ADUser -Identity $user | Where-Object {$PSItem.enabled -eq $false} | Select-Object name,samAccountname,enabled
                } 
            }
 
            "2" {
                Write-Host "Finding Disabled Profiles on PT Desktop" -ForegroundColor Green
                $items=Get-ChildItem -Path "enter path" | Select-Object name -ExpandProperty name
                $newitems=$items -replace "([a-z]+)\.([a-z]+)", '$2' 

            foreach ($user in $newItems) {
                Get-ADUser -Identity $user | Where-Object {$PSItem.enabled -eq $false} | Select-Object name,samAccountname,enabled
                } 
            }
            "3" {
                Write-Host "Finding Disabled Profiles on Relativity Desktop" -ForegroundColor Green
                $items=Get-ChildItem -Path "enter path" | Select-Object name -ExpandProperty name
                $newitems=$items -replace "([a-z]+)\.([a-z]+)", '$2' 

            foreach ($user in $newItems) {
                Get-ADUser -Identity $user | Where-Object {$PSItem.enabled -eq $false} | Select-Object name,samAccountname,enabled
                } 
            }
            "4" {
                Write-Host "Finding Disabled Profiles on Service Desk Desktop" -ForegroundColor Green
                $items=Get-ChildItem -Path "enter path" | Select-Object name -ExpandProperty name
                $newitems=$items -replace "([a-z]+)\.([a-z]+)", '$2' 

            foreach ($user in $newItems) {
                Get-ADUser -Identity $user | Where-Object {$PSItem.enabled -eq $false} | Select-Object name,samAccountname,enabled
                } 
            }

            "5" {
                Write-Host "Finding Disabled Profiles on Venable Desktop" -ForegroundColor Green
                $items=Get-ChildItem -Path "\\pbainfr-fs01\f`$\UPM-BA\Venable Desktop" | Select-Object name -ExpandProperty name
                $newitems=$items -replace "([a-z]+)\.([a-z]+)", '$2' 

            foreach ($user in $newItems) {
                Get-ADUser -Identity $user | Where-Object {$PSItem.enabled -eq $false} | Select-Object name,samAccountname,enabled
                } 
            }

            "6" {
                Write-Host "Finding Disabled Profiles on Vendor Desktop" -ForegroundColor Green
                $items=Get-ChildItem -Path "enter path" | Select-Object name -ExpandProperty name
                $newitems=$items -replace "([a-z]+)\.([a-z]+)", '$2' 

            foreach ($user in $newItems) {
                Get-ADUser -Identity $user | Where-Object {$PSItem.enabled -eq $false} | Select-Object name,samAccountname,enabled
            } 
        }
    }

