
#'{ "key":"value1", "Key":"value2" }' | ConvertFrom-Json -AsHashtable

'



$t = [Association]::new(".yml", "Applications\Code.exe", "Visual Studio Code"); echo $t
$DefaultAssociations = @(
    [Association]::new(".yml", "Applications\Code.exe", "Visual Studio Code"),
    [Association]::new(".json", "Applications\Code.exe", "Visual Studio Code")
); echo $DefaultAssociations
$xml = $DefaultAssociations;
$xml = ConvertTo-Xml -InputObject $DefaultAssociations -As String; echo "$xml"
Get-Member -InputObject $xml

ConvertTo-Xml $t
Get-ChildItem -Path 
Applications\Honeyview.exe

cd "$env:USERPROFILE/Documents"
Get-Process | Export-Clixml -Path .\pi.xml
function tt(){
    $xml = Import-Clixml -Path "$env:USERPROFILE/Documents/MyDefaultAppAssociations.xml"
    echo $xml
}; tt
$env:USERPROFILE

Move-Item -Path "./hwidgen.v1.0.2.4" -Destination "C:\Users\jm\Downloads\setup-windows"

function exportDefaultAppAssociations(){
    dism /online /Export-DefaultAppAssociations:"%UserProfile%\Documents\MyDefaultAppAssociations.xml"
}; exportDefaultAppAssociations

dism /online /Import-DefaultAppAssociations:"%UserProfile%\Desktop\MyDefaultAppAssociations.xml"

'
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

function loadJson(){
    Get-Content -Path "./config/app_associations.json" | ConvertFrom-Json -AsHashtable
} loadJson

function mm(){
    $xmlString = '<?xml version="1.0" encoding="UTF-8"?>
    <DefaultAssociations>';  echo $xmlString

    $DefaultAssociations = @(
        [Association]::new(".yml", "Applications\Code.exe", "Visual Studio Code"),
        [Association]::new(".json", "Applications\Code.exe", "Visual Studio Code")
    );
    #Join-String
    foreach ($asc in $DefaultAssociations){
        echo $asc.ToString()
        echo $asc.ToString
        #$xmlString.Insert(
         
    }
    return $xmlString
} mm
