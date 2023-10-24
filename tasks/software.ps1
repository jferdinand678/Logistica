<#
.Synopsis
  
	  
.Description
	IT WORKS!
  
#>

$ID = "$((Get-Date).ToString('yy'))$((Get-Date).ToString('MM'))$((Get-Date).ToString('dd'))$((Get-Date).ToString('HH'))$((Get-Date).ToString('mm'))"
Start-Transcript -Path "D:\log\software_$ID.log"

winget install Microsoft.Powershell Google.Chrome Google.GoogleDrive Google.EarthPro Google.ChromeRemoteDesktop --disable-interactivity
winget uninstall Microsoft.549981C3F5F10--disable-interactivity

Stop-Transcript

