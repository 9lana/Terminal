$url= 'https://raw.githubusercontent.com/9lana/Terminal/main/test.ps1'
$out = "$env:USERPROFILE\Desktop\akeno.ps1"
(New-Object Net.WebClient).DownloadFile($url, $out)
Write-Host "Testing Done"