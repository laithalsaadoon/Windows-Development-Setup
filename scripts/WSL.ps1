if (Test-PendingReboot) { Invoke-Reboot }
choco install -y Microsoft-Windows-Subsystem-Linux -source windowsFeatures
RefreshEnv
if (Test-PendingReboot) { Invoke-Reboot }
#--- Ubuntu ---
# TODO: Move this to choco install once --root is included in that package
Invoke-WebRequest -Uri https://aka.ms/wslubuntu2004 -OutFile ~/Ubuntu.appx -UseBasicParsing
Add-AppxPackage -Path ~/Ubuntu.appx
# run the distro once and have it install locally with root user, unset password
RefreshEnv
if (Test-PendingReboot) { Invoke-Reboot }
Ubuntu2004 install --root
Ubuntu2004 run apt update
Ubuntu2004 run apt upgrade -y

if (Test-PendingReboot) { Invoke-Reboot }