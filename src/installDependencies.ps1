
$general = @(
    "firefox",
    "chromium",
    "thunderbird",
    "qbittorrent",
    "youtube-dl"
);

$utilities = @(
    "powershell-core",
    "rsync",
    "ripgrep",
    "everything",
    "speccy",
    "msiafterburner",
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
    "honeyview",
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
function main(){
    setupAllDeps;
};

 