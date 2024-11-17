<#
 .Synopsis
  Affiche un message passé en paramètre

.Parameter Message
  Texte à afficher

#>
function Afficher {
param(
    [string] $msg
    )

    Write-Output "Bonjour : $msg"

}
Export-ModuleMember -Function Afficher
<#
 .Synopsis
  Affiche un message passé en paramètre en majuscules

.Parameter Message
  Texte à afficher en capitales

#>
function Crier {
param(
    [string] $msg
    )

    $uppercaseMsg = $msg.ToUpper()
    Write-Output "BONJOUR : $uppercaseMsg"

}
Export-ModuleMember -Function Crier

function Saisir {
param(
    [string] $msg
    )
    $userInput = Read-Host "Please enter your message"
    return $userInput

}
Export-ModuleMember -Function Saisir

function HelloAllUsers {
  $response = Invoke-WebRequest -Uri 'https://jsonplaceholder.typicode.com/users' -UseBasicParsing
  $users = $response | ConvertFrom-Json
  foreach ($user in $users)
  {
    write-host "Hello, $($user.name) has the email: $($user.email)"
  }
  # return $users
}
Export-ModuleMember -Function HelloAllUsers
