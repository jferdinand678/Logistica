$ID = "$((Get-Date).ToString('yy'))$((Get-Date).ToString('MM'))$((Get-Date).ToString('dd'))$((Get-Date).ToString('HH'))$((Get-Date).ToString('mm'))"
Start-Transcript -Path "D:\log\check_$ID.log"

Get-Host
##nmap 192.168.124.0/24
Get-ScheduledTaskInfo -TaskPath 'MTI' -TaskName 'UPDATE Logistica'
Get-ScheduledTaskInfo -TaskPath 'MTI'-TaskName 'SOFTWARE Logistica'
Get-ScheduledTaskInfo -TaskPath 'MTI'-TaskName 'CHECK Logistica'

Stop-Transcript