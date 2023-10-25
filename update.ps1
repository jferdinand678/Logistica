$ID = "$((Get-Date).ToString('yy'))$((Get-Date).ToString('MM'))$((Get-Date).ToString('dd'))$((Get-Date).ToString('HH'))$((Get-Date).ToString('mm'))"
cd "C:\Users\Public\scripts\Logistica"
Start-Transcript -OutputDirectory c:\temp\Logfiles -Append
git pull
Stop-Transcript