
#
# Advanced keyboard settings; Input language hot keys; Unassign
# Ease of Access center > everyhing OFF


# power saver
function configurePowerSaver(){
    Get-ControlPanelItem -Name '*power*' | Show-ControlPanelItem
    #root/WMI -Class WmiMonitorBrightnessMethods
    #The easy solution: Just use –N instead of the parameter alias –NS. This technique is shown here.
    #Get-CimInstance -N root\cimv2\power -Class win32_PowerPlan | select ElementNa
    
    
};

# task bar

function configureTaskBar(){

    #Combine taskbar buttons: never
    #Combine taskbar buttons: never
};

function pinFolders(){

};


# ====================== optional

#Control Panel>Indexing Options