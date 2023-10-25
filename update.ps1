$ID = "$((Get-Date).ToString('yy'))$((Get-Date).ToString('MM'))$((Get-Date).ToString('dd'))$((Get-Date).ToString('HH'))$((Get-Date).ToString('mm'))"
cd "C:\Users\Public\scripts\Logistica"

Start-Transcript -Path "D:/log/update$ID.log" -Append
git pull
Stop-Transcript