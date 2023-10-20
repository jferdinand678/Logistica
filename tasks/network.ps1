<#
.Synopsis
  
	  
.Description
	IT WORKS!
  
#>
$ID = "$((Get-Date).ToString('yy'))$((Get-Date).ToString('MM'))$((Get-Date).ToString('dd'))$((Get-Date).ToString('HH'))$((Get-Date).ToString('mm'))"
nmap -sn 192.168.1.0/24 -oN D:\log\hosts_$ID.log 