
 


function main(){ try {
    $modulePath = Join-Path $env:HOMEPATH "Files/Projects/Modules/Powershell";  
    $moduleList = ls "$modulePath/*.psm1"; 
    foreach ($module in $moduleList){ #echo "Found Module: '" + $module.FullName;
        Import-Module $module.FullName -Global -DisableNameChecking;
    }
} catch { 
    Write-Host $Error 
}};
main;