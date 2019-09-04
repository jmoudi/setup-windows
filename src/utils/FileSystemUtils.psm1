function JSON-Import (
        [string]$filename
    ){ try {
    if ($filename.Length -gt 1){
        $jsonContent = Get-Content $filename | ConvertFrom-Json;
        if ($jsonContent){
            return $jsonContent;
        }
    }
} catch { Write-Host $Error }};

function rename ($filename){ try {
    if ($filename.Length -gt 1){
        $newName = -join($dest, $file.BaseName, "-", $int, $file.Extension);
        $jsonContent = Get-Content $filename | ConvertFrom-Json;
        if ($jsonContent){
            return $jsonContent;
        }
    }
} catch { Write-Host $Error }};


function incrementFileName($file, $dest){
    $int = 2;
    $newName = -join($dest, $file.BaseName, "-", $int, $file.Extension);
    $exists = Test-Path $dest;
    if ($exists -eq $true){
        echo "Increment: Already exists!" $newName;
    } else {
        echo "Renaming ..." $newName;
    }
    #Rename-Item $item -NewName 
}

function moveAll($path, $destination, [string]$include){

    $filesList = ls $path -Recurse -File -Include $include;
    -join("Found <", $filesList.Length, "> results.") | echo;
    foreach ($file in $filesList){
        -join("  File:  ", $file.FullName) | echo;
        $dest = Join-Path $destination -ChildPath $file.Name; 
        #-join("  Dest:  ", $dest) | echo;
        $exists = Test-Path $dest;
        if ($exists -eq $true){
            echo -join("'", $dest, "'Already exists!");
            $p = -join($file.BaseName, '-(\d+)', $file.Extension);
            $dest -match $p; 
            echo $p "MATCHES: " $matches;
            #incrementFileName $file $dest;
        } else {
            move $file -Destination $destination
        }
    }
};