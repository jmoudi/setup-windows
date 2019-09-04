
function disableUserAccountControl(){
	Set-ItemProperty -Path REGISTRY::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name ConsentPromptBehaviorAdmin -Value 0
}; disableUserAccountControl

"C:\Program Files\PowerShell\6\pwsh.exe"
Get-ItemProperty -Path REGISTRY::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name ConsentPromptBehaviorAdmin | $
 

# power saver
function configurePowerSaver(){

};

# task bar
function configureTaskBar(){

};

function pinFolders(){

};

function createHotkeys(){
    #xmodmap ~/.Xmodmap
};
function loadHotkeys(){
    autohotkey "D:\Projects\Libraries\Installers\windows\src\config\default_hotkeys.ahk"
}; loadHotkeys
#https://www.thewindowsclub.com/reset-export-import-default-app-associations

function setupAppAssociations(){
    #xmodmap ~/.Xmodmap
};

