notepad;
$Shortcut = (New-Object -ComObject WScript.Shell).CreateShortcut("$env:USERPROFILE\code1.lnk")
$Shortcut.TargetPath = "$env:USERPROFILE\code1.hta"
$Shortcut.Save()
