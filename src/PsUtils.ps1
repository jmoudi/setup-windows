
$general = @(
    "firefox",
    "chromium",
    "thunderbird",
    "qbittorrent",
    "youtube-dl"
);

$utilities = @(
    "rsync",
    "7zip",
    "autohotkey.portable",
    "treesizefree",
    "nxlog",
    "curl",
    "rufus",
    "cygwin"
);

$developer = @(
    "git",
    "notepadplusplus",
    "vscode",
    "yarn",
    "nodejs",
    "golang",
    "python"
);

$media = @(
    "mpv",
    "xnview",
    "sumatrapdf",
    "foxitreader"
);

$gaming = @(
    "steam",
);
$editing = @(
    "paint.net",
);

$dependencies = $general + $utilities + $developer + $media + $gaming + $editing;
$setupLog = "./setup.log"
#boxstarter  putty.install
function installDependency($dep){
    echo "setting up: $dep";
    choco install --confirm --log-file=$setupLog $dep;
    choco upgrade --confirm --log-file=$setupLog $dep;
};
function installDeps($deplist){
    foreach ($dep in $deplist){
        installDependency $dep;
    }
};
function logUpdate(){

};
function addToPath(){
    $appDir = "C:\Program Files";
    $apps = ls $appDir;
    foreach ($app in $apps){
        echo "App: $app";
    }
};
function setupAllDeps(){
    echo "All dependencies:\n$dependencies";
    #installDeps $dependencies;
}; 
function main(){
    setupAllDeps;
};
