#>NetFramework3.5
Enable-WindowsOptionalFeature -Online -FeatureName "NetFx3"  
#Microsoft print to PDF
Enable-WindowsOptionalFeature -FeatureName "Printing-PrintToPDFServices-Features" -All -Online
#Telnet Client
Enable-WindowsOptionalFeature -Online -FeatureName "TelnetClient"