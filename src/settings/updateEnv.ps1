

    #$exeFile = Get-ChildItem -Path $appDir -File -Depth 1 -Exclude @("*inst*","*setup*","*x86*") -Include @("*.exe","*.cmd","*.msi");
    #return $exeFile
    function hasExe($appDir){
        # search for .exe executables in ./ and ./*/
        # only works in powershell-core
        $exeFile = Get-ChildItem -Path $appDir -File -Depth 1 -Exclude @("*inst*","*setup*","*x86*") -Include @("*.exe","*.cmd","*.msi");
        return $exeFile
    };
    #hasExe "/home/jm/Public/test/"
    function hasBin($appDir){
        # search for binary executables
        $binDir = Get-ChildItem -Path $appDir -Directory -Depth 1 -Include @("bin");
        $dest = Join-Path $destination -ChildPath $file.Name;
        return $binDir
    };
    function addAppToPath($appPath){
        echo "App: $appPath";
        $exe = hasExe $appPath;
        if ($exe){
            echo "hasExe: $exe";
        } else {
            $bin = hasBin $appPath;
            echo "hasBin: $res2";
        } else {
            echo "Nothing found"
        }
        
    };
 
    function updateEnvPath(){
        $appRoots = @("C:/Program Files","C:/Program Files (x86)", "C:/ProgramData/chocolatey/lib");
        $appExcl = @("*Windows*","Common Files", "*NVIDIA*", "Internet Explorer", "Vulkan*","*Microsoft*","Git","Steam","unins*");
        $appDirs = Get-ChildItem -Path $appRoots -Directory -Exclude $appExcl;
        foreach ($app in $appDirs){
            addAppToPath $app.FullName;
        }
    }; 