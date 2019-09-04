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
# ls | foreach { echo rename $_ -to }
o replace
Export-ModuleMember -Function * -Alias *