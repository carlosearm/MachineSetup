#Install-Module -Name CredentialManager -Scope CurrentUser -Force
New-StoredCredential -Target "90.0.0.20" -UserName "Administrator" -Password "Administrator"