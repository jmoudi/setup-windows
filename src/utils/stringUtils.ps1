

function replaceCarriage(){
    -replace([System.Environment]::NewLine, "iiiii");
    #-replace('\n', "iiiii");
}
 

function parse([string]$inp){
    echo Get-TypeData;
    
    $regex = [Regex];
    #$regexOptions = [System.Text.RegularExpressions.RegexOptions];
    $m = [System.Text.RegularExpressions.RegexOptions]::Multiline;
    $c = [System.Text.RegularExpressions.RegexOptions]::Compiled;
    $i = [System.Text.RegularExpressions.RegexOptions]::IgnoreCase;
    $reg = New-Object -TypeName [System.Text.RegularExpressions.Regex] -ArgumentList [$m, $c, $i];

    #§regex
    $pattern = "(\b[^\s\b`"`'``]@[^\s\b`"`'``]*\b)";
    #$tt = "sfs_s@jdihji.com";
    $inp.
    $match = $reg.Matches($inp, $pattern );  
        #$i, $m, $c);
    echo "MATCHES: $match  $Matches";

}


function replaceCarriage(){
    foreach ($m in $match.Groups){
        echo $m.Value
    }
     
    
    $o
    throw {ExceptionMessage = "sdsdfsfdf"}
    $o = {
        ExceptionName = 'notfound';
        ExceptionMessage = 'match not found'
    }; 
    ThrowError -ExceptionObject $o
    
    {ExceptionMessage = "sdsdfsfdf"}
    
    
    if ($match.Success){
        $code = $match.Groups['code'].Value.Trim();
        $un = [System.Web.HttpUtility]::HtmlDecode($code);
        return $un
    } else {
        ThrowError -ExceptionObject
    }
    getCode $c
    }
    