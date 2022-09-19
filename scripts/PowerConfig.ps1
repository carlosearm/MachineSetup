$p = Get-CimInstance -Name root\cimv2\power -Class win32_PowerPlan -Filter "ElementName = 'High Performance'"  
powercfg.exe -SETACTIVE ([string]$p.InstanceID).Replace("Microsoft:PowerPlan\{","").Replace("}","")
powercfg /SETACVALUEINDEX SCHEME_CURRENT 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0