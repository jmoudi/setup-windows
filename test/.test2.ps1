$yaml = ConvertTo-Yaml @{"hello"="world"; "anArray"=@(1,2,3); "nested"=@{"array"=@("this", "is", "an", "array")}}; $yaml
Get-Command -Name '*Yaml*'

Install-Package -Name 'powershell-yaml'
Find-Package -Name YamlDotNet
code " %AppData%\NuGet\NuGet.config"
Get-Package -Name '*Yaml*'
git config get --global
git config --get-all --global
Get-Command -Verb 'convert*'
Get-Command -Verb '*Yaml*'
Get-Command -Noun 'convert*'
$p = Get-Package -Name 'YamlDotNet'; $p.Source

 
"C:\Program Files\PowerShell\6\pwsh.exe"
Get-ItemProperty -Path REGISTRY::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name ConsentPromptBehaviorAdmin | $
Find-Package -Name '*yaml*'
ConvertTo-YAML


$dependencies = $general + $utilities + $developer + $media + $gaming + $editing;
$setupLog = "./setup.log"
#boxstarter  putty.install


$xmlTemplate = '
<?xml version="1.0" encoding="UTF-8"?>
<DefaultAssociations>
{0}
</DefaultAssociations>';


function mm([string]$name){
    $DefaultAssociations = loadJson "./config/app_associations.json";
    
    $asoc = createDefaultAssociations $DefaultAssociations;
    #$asoc[0].
    #echo $asoc
    New-Item -Path "$env:TEMP/$name.xml" -Value "$asoc" -Force
    #New-Item -Path "$env:TEMP/$name.xml" -Value $asoc.ToString() -Force # "$asoc" #.ToString()
    code "$env:TEMP/name.xml"
    #echo $asoc.ToString()
    #Get-Member -InputObject $asoc
    #echo "ASSOC $asoc"
} 

mm 'aa'


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

¦ Get-Member
Get-ChildItem -Path "C:\Program Files (x86)\Yarn" -Recurse -File -Depth 2 -Exclude @("unins*") -Include @("*bin/*", "*.exe","*.msi");


Get-ChildItem -Path "C:\Program Files (x86)\Yarn" -Recurse -File -Depth 2 | Get-Member

Get-ChildItem -Path "C:\Program Files (x86)\Yarn" -Recurse -File -Depth 2 -Exclude @("unins*") -Include @("*bin/*", "*.exe","*.msi");
 
"C:\Program Files\PowerShell\6\pwsh.exe"
Get-ItemProperty -Path REGISTRY::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name ConsentPromptBehaviorAdmin | $
Find-Package -Name '*yaml*'
ConvertTo-YAML


Find-Package -Name YamlDotNet
code " %AppData%\NuGet\NuGet.config"
Get-Package -Name '*Yaml*'
git config get --global
git config --get-all --global
Get-Command -Verb 'convert*'
Get-Command -Verb 'yaml*'
Get-Command -Noun 'convert*'
$p = Get-Package -Name 'YamlDotNet'; $p.Source

echo $_.Source
$z = [YamlDotNet.Serialization.Deserializer]::new(); $z
[YamlDotNet]
conver