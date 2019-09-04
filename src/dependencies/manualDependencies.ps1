
$deps = (
    @{"Name"="ableton"},
    @{"Name"="guildwars2"}
)






## decrapifier
# https://community.spiceworks.com/scripts/show/4378-windows-10-decrapifier-18xx-19xx
# https://community.spiceworks.com/user-groups/windows-decrapifier-group?crumb=true

function getDecrapifierCode([string]$html){
    $re = [Regex] '(?ms)<pre>(?<code>.*)</pre>'; 
    $match = $re.Match($html);
    [String] $output = '';
    try {
        $code = $match.Groups['code'].Value.Trim();
        $output = [System.Web.HttpUtility]::HtmlDecode($code);
    } catch {
        #$output
    }
    return $output
} 
function downloadDecrapifier(){
    clear;
    $page = Invoke-WebRequest -URI 'https://community.spiceworks.com/scripts/show/4378-windows-10-decrapifier-18xx-19xx';
    if ($page.StatusDescription -eq 'OK'){
        #echo $page.Content
        $code = getDecrapifierCode $page.Content
        #$match = $page.Content -replace([System.Environment]::NewLine, " _______ "); #$page.Content -match "(?m)<pre>.*</pre>"
        echo $code
    }
    #Get-Member -InputObject $page

    #echo $page.ToString()
    #echo "$page"
} 
 

 
#Ableton 10,music,editing,local
#Automap,music,driver,
#FL Studio 12,music,editing,local
#NI Massive,music,editing,
#Battle.net,gaming,platform,
#LightWorks,video,editing,local
 
 
# https://forums.mydigitallife.net/threads/kms_vl_all-smart-activation-script.79535/ 


# hwidgen



 