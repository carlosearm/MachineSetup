Disable-UAC
$ConfirmPreference = "None" #ensure installing powershell modules don't prompt on needed dependencies

# Get the base URI path from the ScriptToCall value
$bstrappackage = "-bootstrapPackage"
$helperUri = $Boxstarter['ScriptToCall']
$strpos = $helperUri.IndexOf($bstrappackage)
$helperUri = $helperUri.Substring($strpos + $bstrappackage.Length)
$helperUri = $helperUri.TrimStart("'", " ")
$helperUri = $helperUri.TrimEnd("'", " ")
$strpos = $helperUri.LastIndexOf("/")
$helperUri = $helperUri.Substring(0, $strpos)
$helperUri += "/scripts"
Microsoft.PowerShell.Utility\Write-Output "helper script base URI is $helperUri"

function executeScript {
    Param ([string]$script)
    Microsoft.PowerShell.Utility\Write-Output  "executing $helperUri/$script ..."
	iex ((new-object net.webclient).DownloadString("$helperUri/$script"))
}
#Add Windows Credential
iex ((new-object net.webclient).DownloadString("https://raw.githubusercontent.com/liligut/MachineSetup/master/scripts/AddWindowsCredentials.ps1"))