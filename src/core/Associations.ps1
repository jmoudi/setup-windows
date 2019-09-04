


class Association {
    [string]$Identifier
    [string]$ProgId
    [string]$ApplicationName

    Association([string]$Identifier, [string]$ProgId, [string]$ApplicationName){
        $this.Identifier = $Identifier
        $this.ProgId = $ProgId
        $this.ApplicationName = $ApplicationName
    }

    [string]ToString(){
        
        $str = '<Association Identifier="' + $this.Identifier + '" ProgId="' + $this.ProgId + '" ApplicationName="' + $this.ApplicationName + '" />"'
        return $str
        #return Join-String "<Association Identifier=\`"$this.Identifier`" ProgId=`"$this.ProgId`" ApplicationName=`"$this.ApplicationName`" />"
    }
}

function setupAppAssociations([string]$path){
    #dism /online /Import-DefaultAppAssociations:"%UserProfile%\Desktop\MyDefaultAppAssociations.xml" #
    dism /online /Import-DefaultAppAssociations:$path
}
function exportDefaultAppAssociations([string]$path){
    #dism /online /Import-DefaultAppAssociations:"%UserProfile%\Desktop\MyDefaultAppAssociations.xml" #
    dism /online /Export-DefaultAppAssociations:$path
}

function convertAssociation($asc){
    $str = '<Association Identifier="' + $asc.Identifier + '" ProgId="' + $asc.ProgId + '" ApplicationName="' + $asc.ApplicationName + '" />';
    #echo 'AAAAA' + $asc
    #echo $asc
    return $str
}
function loadJson(){
   $associations = Get-Content -Path "./config/app_associations.json" | ConvertFrom-Json #-AsHashtable;
   return $associations.values
   
}
function setAssociation($name, $pattern){
    $matches = Get-Command -Name "*$pattern*";
    $src = $matches[0].Source;
    Set-Alias $name -Value $src -Scope global;
}
function createDefaultAssociationsXml($associations){
    [System.Collections.ArrayList]$outp = @();
    #[System.Collections.ArrayList<Association>]$outp = @();
    foreach ($asc in $associations){ #echo $asc.ToString()
        $xmlStr = convertAssociation $asc;
        $outp.Add($xmlStr);
    }
    
    #[string]::Join()
    $a = Join-String -InputObject $outp -Separator "`n"; # -OutputPrefix '<?xml version="1.0" encoding="UTF-8"?><DefaultAssociations>' -OutputSuffix '</DefaultAssociations>'
    #$xmlA = [string]::Format($xmlTemplate, $a.ToString())
    $xmlA = [string]::Format($xmlTemplate, "$a");
    New-Item -Path "$env:TEMP/$name.xml" -Value "$xmlA" -Force
    #echo $xmlA
    #echo "AAAAA000000`n$a"
    #echo "jjjjj`n$xmlA"
    return "$xmlA"
}


