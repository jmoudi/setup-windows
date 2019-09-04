function mm(){
    $matches = Get-ChildItem -Path "D:\G3D G2D\Videos G3D" -File -Depth 8 -Include @("*арафан*");
    foreach ($m in $matches){
        Move-Item -Path "$m" -Destination "D:\G3D G2D\Videos G3D\Sarafan"
    }
} 
 

function loadYaml($path){
    $yaml = Get-Content -Path $path | ConvertFrom-Yaml;
    echo $yaml #-AsHashtable;
    return $yaml
 } 

 function configGit(){
    $settings = loadYaml "../src/config/git.yml"
    foreach ($setting in $settings){
        #gm -i $setting
        echo $setting.name;
        #git config --global $setting[0] $setting[1]
    }
    
    #xmodmap ~/.Xmodmap
}; 
 configGit
#ConvertTo-Yaml -JsonCompatible
function ada($path){
    $inp = 'user:
    name: jmoudi
    email: jmvumx@gmail.com';
  $obj =  ConvertFrom-Yaml $inp;
  ConvertTo-Json $obj
  foreach ($k in $obj.Keys){
    echo $k
}
}
function aad($path){
    $inp = 'user:
    name: jmoudi
    email: jmvumx@gmail.com';
  $obj =  ConvertFrom-Yaml $inp;
  echo $obj.user.name

  foreach ($k in $obj.user.Keys){
      $key = "$k"
      $val = $obj.user[$key]
      #gm -i $k
      echo "$key $val"
 }
 } 
 function aa($path){
    $inp = 'user:
    name: jmoudi
    email: jmvumx@gmail.com';
  $obj =  ConvertFrom-Yaml $inp;
  echo $obj.user.name

  foreach ($key in $obj.user.Keys){
      $val = $obj.user[$key]
      echo "$key $val"
 }
 } 
 #aa
 function aaaa($path){
     $gitpath =  Join-Path "$env:USERPROFILE" ".config" 'Git';
     New-Item $gitpath -Force
 } aaaa

 git config 
 Join-Path -Path "$env:USERPROFILE" -ChildPath

 function configGit(){
    $settings = $(
        $('user.name', "jmoudi"),
        $('user.email', "jmvumx@gmail.com")
    );
    foreach ($setting in $settings){
        echo $setting[0];
        git config --global $setting[0] $setting[1]
    }
    
    #xmodmap ~/.Xmodmap
}; configGit


Get-Content 'Microsoft.PowerShell.Core\FileSystem::\\INTERNETBOX-NAS/hdd_toshiba/Files/Configs/.config/git/config'
System.Text.RegularExpressions.RegexOptions.IgnoreCase 
function logUpdate(){

};
function llll(){
    $g = Resolve-Path -Path "\\INTERNETBOX-NAS/hdd_toshiba/Files/Configs/.config/git/config" | Get-Content -Raw;
    New-Item -Path "$env:USERPROFILE/.config/git/config" -Value "$g" -Force
    explorer "$env:USERPROFILE/.config/git"
 } llll
 function llll(){
    $g = Resolve-Path -Path "\\INTERNETBOX-NAS/hdd_toshiba/Files/Configs/.config/git/config";
    Copy-Item $g.Path -Destination "$env:USERPROFILE/.config/git" -Force
 
 } llll

 
 function llll(){
    $g = Resolve-Path -Path "\\INTERNETBOX-NAS/hdd_toshiba/Files/Configs/.config/git";
    Copy-Item $g.Path -Destination "$env:USERPROFILE/.config/git" -Recurse -Force
 
}
llll
$g = Resolve-Path "\\INTERNETBOX-NAS\hdd_toshiba\Files\Configs\.config\git/config"; code $g.Path
$g = Resolve-Path -Path "\\INTERNETBOX-NAS/hdd_toshiba" "Files/Configs" ".config/git/config"; code $g.Path
Resolve-Path -Path "\\INTERNETBOX-NAS/hdd_toshiba/Files/Configs/.config/git/config"; code $g.Path
 code $g

Resolve-Path -Path "\\INTERNETBOX-NAS/hdd_toshiba/Files/Configs/.config/git/config" | code $_.Path

; code $g.Path