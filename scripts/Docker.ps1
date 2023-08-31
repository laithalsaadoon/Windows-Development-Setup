Enable-WindowsOptionalFeature -Online -FeatureName containers -All
RefreshEnv
if (Test-PendingReboot) { Invoke-Reboot }
choco install -y docker-desktop
RefreshEnv
if (Test-PendingReboot) { Invoke-Reboot }