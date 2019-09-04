function writeToLog ($context, $message){
    #try {
    ##if ($log) not too large    get-content -path 'C:\Users\Jon\Files\Projects\Configurators\WindowsConfig\logs\Services.log'
    $datetime = Get-Date -Format "yyyy'/'MM'/'dd' 'HH':'mm':'ss";
    $mostRecentLine = Get-History -Count 1;
    $line = "[$datetime] #$history [$context] $message;   $mostRecentLine"; 
    echo "Console log line: $line";
    $log = get-content -Path "./logs/adxregistrator.log"; 
    $log += $line;
    Set-Content -Path "./logs/Services.log" -Value $log;    
#/} catch { writeToLog -context "Services" -message "{ $this } [error] stacktrace: ss"; }
}