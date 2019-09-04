



function installChocolatey(){
    #@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
    Set-ExecutionPolicy Bypass -Scope Process -Force; 
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'));
};

function installPsDependencies($dep){
    Install-Package -Name $dep -Confirm
    nuget install $dep
}


function installDependency($dep){
    echo "setting up: $dep";
    choco install --ignore-checksums --yes --log-file=$setupLog $dep;
    choco upgrade --yes --log-file=$setupLog $dep;
};
function installDeps($deplist){
    foreach ($dep in $deplist){
        installDependency $dep;
    }
};

function setupAllDeps(){
    echo "All dependencies:\n$dependencies";
    installDeps $dependencies;
}; 


 