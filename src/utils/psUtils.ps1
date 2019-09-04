
function descendDir($appDir){
    # search for .exe executables in ./ and ./*/
    # only works in powershell-core
    $depth = 0;
    $maxDepth = 2;
    while ($depth -le $maxDepth){
        echo "DIR: $appDir DEPTH: $depth";
        $exe = Get-ChildItem -Path $appDir -File -Depth $depth -Exclude @("*inst*","*setup*","*x86*") -Include @("*.exe","*.cmd","*.msi");
        echo "EXE: $exe";
        if ($exe){
            return $exe
        }
        $depth++; 
    }

}
function getEnv(){
    Get-Item -Path Env:* | Sort-Object -Property 'name'
 } getEnv
Add-Member
[Environment]::SetEnvironmentVariable("TestVariableName", "My Value", "Machine")
function loadJson(){
    $associations = Get-Content -Path "./config/app_associations.json" | ConvertFrom-Json #-AsHashtable;
    return $associations.values
    
 }
 function loadYaml($path){
    $yaml = Get-Content -Path $path | ConvertFrom-Yaml #-AsHashtable;
    return $associations.values
 } loadYaml "./config/git.yml"
 
#New-Variable -Value 10 -Option ReadOnly -Name x 

#[System.Runtime.InteropServices.RuntimeEnvironment]::GetRuntimeDirectory()
 

 