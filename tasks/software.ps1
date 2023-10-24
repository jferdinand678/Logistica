<#
.Synopsis
  
	  
.Description
	IT WORKS!
  
#>

$ID = "$((Get-Date).ToString('yy'))$((Get-Date).ToString('MM'))$((Get-Date).ToString('dd'))$((Get-Date).ToString('HH'))$((Get-Date).ToString('mm'))"
Start-Transcript -Path "D:\log\software_$ID.log"
winget upgrade --all
winget install Microsoft.Powershell Google.Chrome Google.GoogleDrive Google.GoogleDesktop ankurk91.GoogleChatElectron arjun-g.google-meet-desktop Google.EarthPro alexkim205.g-desktop-suite klinker24.google-calendar-desktop timche.gmail-deskt  Google.ChromeRemoteDesktop 

Stop-Transcript

