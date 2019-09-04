#'{ "key":"value1", "Key":"value2" }' | ConvertFrom-Json -AsHashtable
cd  D:\Projects\Libraries\Installers\windows\src 

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

Get-Item -
Get-Command -Type Application -Name "pwsh.*"

Get-Command -Type Application -Name "code.*" | Get-Member
$PSEdition
# change vscode to admin
"C:\Program Files\Microsoft VS Code\Code.exe"
function changeA([string]$pattern){
    $cmds = Get-Command -Type Application -Name $pattern # | echo $_.Source $cmds[0].Source
    Get-Item $cmds[0].Source | Get-Member
    $item = Get-Item $cmds[0].Source;

    echo $item.Attributes
}; 
changeA "pwsh.*"
changeA "code.*"
function changeAd(){
    $cmds = Get-Command -Type Application -Name "code.*" | echo $_[0].Source
    echo $cmds
}; changeAd
    Get-Command -ParameterName *code* -ParameterType AuthenticationMechanism

cd "$env:USERPROFILE/Documents"
Get-Process | Export-Clixml -Path .\pi.xml
function tt(){
    $xml = Import-Clixml -Path "$env:USERPROFILE/Documents/MyDefaultAppAssociations.xml"
    echo $xml
}; tt
$env:USERPROFILE

Move-Item -Path "./hwidgen.v1.0.2.4" -Destination "C:\Users\jm\Downloads\setup-windows"


