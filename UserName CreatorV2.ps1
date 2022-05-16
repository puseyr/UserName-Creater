$firstName = Read-Host("First Name: ")
$lastName = Read-Host("Last Name: ")
$i = $lastName.Length
$userName = " "

if ($i -le 7){
    
    $userName = $lastName.Substring(0,$i).ToLower()+$firstName.Substring(0,1).ToLower()

    }

elseif ($i -ge 7){
    
    $userName = $lastName.substring(0,7).ToLower()+$firstName.Substring(0,1).ToLower()

    $i++

    }

$userName | clip

Write-Host("`nUsername Copied to clipboard!`n") -ForegroundColor Green

Write-Host($userName) -ForegroundColor Cyan

Read-Host -Prompt "Press any key to continue..."



<#
Future features:
    - Check against AD if $userName exists already and make an alternate
    - Create new user and populate with user info
#>