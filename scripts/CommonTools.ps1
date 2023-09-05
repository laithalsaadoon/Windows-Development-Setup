# tools we expect devs across many scenarios will want
$toolsList = @(
    "7zip.install"
    "sysinternals"
    "curl"
    "wget"
    "awscli"
    "awstools.powershell"
    "slack"
);

foreach ($tool in $toolsList) {
	choco install -y $tool
	Update-SessionEnvironment
}

if (Test-PendingReboot) { Invoke-Reboot }