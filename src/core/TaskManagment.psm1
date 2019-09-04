function bkTask(){
    $content = Get-ScheduledTask | ConvertTo-Json;
    $servicesBackupDir = "C:\Users\Jon\Files\Organisation\OS\Windows";
    $date = Get-Date -UFormat "%y-%m-%d_%H.%M.%S";
    $name = "Tasks_$date";
    $path = "$servicesBackupDir\$name.log"
    $exists = Test-Path $path;
    if (!$exists){
        echo "'$path' does not exist";
        New-Item -ItemType "file" -Path $path -Value $content
    }
};  