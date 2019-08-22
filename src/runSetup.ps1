 
# PowerShell: Remove-WindowsFeature Windows-Defender 
Set-MpPreference -DisableRealtimeMonitoring $true;

function runHwidgen(){
    "./lib/hwidgen.v1.0.2.4/hwidgen.mk3.exe"
};

function setupPermissions(){
    #if Get-ExecutionPolicy == 'Restricted'
    Set-ExecutionPolicy Bypass -Scope Process -Force;
};

function installChocolatey(){
    #@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
};