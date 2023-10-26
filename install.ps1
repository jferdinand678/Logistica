winget install Microsoft.Powershell
cd C:\

mkdir 'mercurio' 
mkdir 'mercurio\log'
$FILE=Get-Item 'C:\mercurio' -Force
$FILE.attributes='Hidden'


cd 'C:\mercurio'
winget install Git.Git
git clone 'https://github.com/jferdinand678/Logistica.git'


#Task Schedule

$taskName = "CHECK Logistica"
# Unregister-ScheduledTask -TaskName $taskname -Confirm:$false
# Describe the scheduled task.
$description = "Activa CHECK"


# Create a new task action

$taskAction = New-ScheduledTaskAction `
    -Execute 'powershell.exe' `
    -Argument '-File "C:\mercurio\Logistica\tasks\check.ps1"'
    

# Create a new trigger (Daily at 3 AM)

$taskTrigger = New-ScheduledTaskTrigger -Once -At (Get-Date) -RepetitionInterval (New-TimeSpan -Minutes 1)

# Register the scheduled task

Register-ScheduledTask `
    -TaskName $taskName `
    -Action $taskAction `
    -Trigger $taskTrigger `
    -Description $description

$UserId = "NEO"
# Set the task principal's user ID and run level.
$taskPrincipal = New-ScheduledTaskPrincipal -UserId $UserId -RunLevel Highest 
# Set the task compatibility value to Windows 10.
$taskSettings = New-ScheduledTaskSettingsSet -Compatibility Win8
# Update the task principal settings
Set-ScheduledTask -TaskName $taskName -Principal $taskPrincipal -Settings $taskSettings 

