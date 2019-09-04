¦ Get-Member
Get-ChildItem -Path "C:\Program Files (x86)\Yarn" -Recurse -File -Depth 2 -Exclude @("unins*") -Include @("*bin/*", "*.exe","*.msi");


Get-ChildItem -Path "C:\Program Files (x86)\Yarn" -Recurse -File -Depth 2 | Get-Member

Get-ChildItem -Path "C:\Program Files (x86)\Yarn" -Recurse -File -Depth 2 -Exclude @("unins*") -Include @("*bin/*", "*.exe","*.msi");
function hasExe($appDir){
    $binDir = Get-ChildItem -Path $appDir -File -Depth 2 -Exclude @("unins*") -Include @("*.cmd", "*.exe","*.msi");
    return $binDir
};
function hasBin($appDir){
    $binDir = Get-ChildItem -Path $appDir -Directory -Depth 3 -Include @("bin","bin/*");
    return $binDir
};
function addAppToPath($appPath){
    echo "App: $appPath";
    $res = hasExe $appPath;
    $dd = $res.DirectoryName
    echo "hasExe: $res ....$dd";
    $res2 = hasBin $appPath;
    echo "hasBin: $res2";
};
function updateEnvPath(){
    $appRoots = @("C:\Program Files","C:\Program Files (x86)");
    $appExcl = @("*Windows*","Common Files", "*NVIDIA*", "Internet Explorer", "Vulkan*","*Microsoft*","Git","Steam","unins*");
    $appDirs = Get-ChildItem -Path $appRoots -Directory -Exclude $appExcl;
    foreach ($app in $appDirs){
        addAppToPath $app.FullName;
    }
};
updateEnvPath


addAppToPath "C:\Program Files (x86)\Foxit Software"

function hasExe($appDir){
    $binDir = Get-ChildItem -Path $appDir -File -Depth 2 -Exclude @("ins*") -Include @("*.cmd", "*.exe","*.msi");
    return $binDir
}; 
function addAppToPath2($appPath){
    echo "App: $appPath";
    $res = hasExe $appPath;
    $dd = $res.DirectoryName
    echo "hasExe: ....$dd";
 
};
function updateEnvPath(){
    $appRoots = @("C:\Program Files","C:\Program Files (x86)");
    $appExcl = @("*Windows*","Common Files", "*NVIDIA*", "Internet Explorer", "Vulkan*","*Microsoft*","Git","Steam","unins*");
    $appDirs = Get-ChildItem -Path $appRoots -Directory -Exclude $appExcl;
    foreach ($app in $appDirs){
        addAppToPath2 $app.FullName;
    }
};
updateEnvPath

Get-ChildItem -Path "C:\Program Files\nodejs" -File -Depth 1 -Exclude @("ins*") -Include @("*.cmd", "*.exe","*.msi");

Join-Path "C:\Program Files\nodejs"
Get-ChildItem -Path "C:\Program Files\nodejs" -File -Depth 2 -Exclude @("ins*") -Include @("*.cmd", "*.exe","*.msi");
Get-ChildItem -Path "C:\Program Files\nodejs" -File -Depth 1 -Exclude @("ins*") -Include @("*.cmd", "*.exe","*.msi");

Get-ChildItem -Path "C:\Program Files\nodejs" -File -Depth 1 -Exclude @("ins*") -Include @("*.cmd", "*.exe","*.msi");
Get-ChildItem -Path "C:\Program Files (x86)\Yarn" -File -Depth 1 -Exclude @("ins*") -Include @("*.cmd", "*.exe","*.msi");

Get-ChildItem -Path "C:\Program Files (x86)\Yarn" -File -Depth 1

Get-ChildItem -Path "C:\ProgramData\chocolatey" -File -Depth 1 -Exclude @("ins*") -Include @("*.cmd", "*.exe","*.msi");

Get-ChildItem -Path "C:\ProgramData\chocolatey/lib" -File -Depth 2 -Exclude @("ins*") -Include @("*.cmd", "*.exe","*.msi");
