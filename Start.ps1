
Param(
    [int]$iterations = 10
)

$path = "DWM-Memory-Leak.exe"

"Windows CurrentVersion: " + (Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion" -Name ReleaseId).ReleaseID
"Windows CurrentBuild: " + (Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion" -Name CurrentBuild).CurrentBuild
"Net Framework Release: " + (Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full' -Name Release).Release
"Net Framework TargetVersion: " + (Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full' -Name TargetVersion).TargetVersion
"Net Framework Version: " + (Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full' -Name Version).Version
"----------"
"Iteration, WorkingMemory"
"-1, " + (Get-Process -Name dwm).WS

for ($i=0; $i -le $iterations; $i++)
{
    $proc = Start-Process -filePath $path -PassThru
    Start-Sleep -s 5
    $proc | kill
    [string]$i + ", " + (Get-Process -Name dwm).WS
}
