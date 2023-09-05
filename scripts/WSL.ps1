if (Test-PendingReboot) { Invoke-Reboot }
choco install -y Microsoft-Windows-Subsystem-Linux -source windowsFeatures
RefreshEnv
if (Test-PendingReboot) { Invoke-Reboot }
choco install wsl2 -y
RefreshEnv
if (Test-PendingReboot) { Invoke-Reboot }
choco install -y wsl-ubuntu-2004 --params "/InstallRoot:true"
if (Test-PendingReboot) { Invoke-Reboot }