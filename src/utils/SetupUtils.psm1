 




 

function installDependency($dep){
    echo "setting up: $dep";
    choco install --ignore-checksums --yes --log-file=$setupLog $dep;
    choco upgrade --yes --log-file=$setupLog $dep;
}
function installDeps($deplist){
    foreach ($dep in $deplist){
        installDependency $dep;
    }
}

function setupAllDeps(){
    echo "All dependencies:\n$dependencies";
    installDeps $dependencies;
}

function installPsDependencies($dep){
    Install-Package -Name $dep -Confirm
    nuget install $dep
}