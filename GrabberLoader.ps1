$username = $env:USERNAME
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut("$env:USERPROFILE\Desktop\MyShortcut.lnk")
$Shortcut.TargetPath = "C:\Users\JJJ\Desktop\tokengrabber.bat"
$Shortcut.Save()
