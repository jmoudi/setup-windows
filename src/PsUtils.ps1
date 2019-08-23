
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
    "steam"
);
$editing = @(
    "paint.net"
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
function hasExe($appDir){
    $binDir = Get-ChildItem -Path $appDir -File -Depth 1 -Include @("*.exe","*.msi");
    return $binDir
};
function hasBin($appDir){
    $binDir = Get-ChildItem -Path $appDir -Directory -Depth 3 -Include @("bin/*");
    return $binDir
};
function addAppToPath($appPath){
    echo "App: $appPath";
    $res = hasExe $appPath;
    echo "hasExe: $res";
    $res2 = hasBin $appPath;
    echo "hasBin: $res2";
};
function updateEnvPath(){
    $appRoots = @("C:\Program Files","C:\Program Files (x86)");
    $appExcl = @("*Windows*","Common Files", "*NVIDIA*", "Internet Explorer", "Vulkan*","*Microsoft*");
    $appDirs = Get-ChildItem -Path $appRoots -Directory -Exclude $appExcl;
    foreach ($app in $appDirs){
        addAppToPath $app.FullName;
    }
};
function setupAllDeps(){
    echo "All dependencies:\n$dependencies";
    installDeps $dependencies;
}; 
function main(){
    setupAllDeps;
};


function logUpdate(){

};