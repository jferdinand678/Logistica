<#
.Synopsis
  
	  
.Description
	IT WORKS!
  
#>

$ID = "$((Get-Date).ToString('yy'))$((Get-Date).ToString('MM'))$((Get-Date).ToString('dd'))$((Get-Date).ToString('HH'))$((Get-Date).ToString('mm'))"
Start-Transcript -Path "D:\log\software_$ID.log"
winget upgrade --all
Stop-Transcript

