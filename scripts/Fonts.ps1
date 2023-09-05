# install fonts

$toolsList = @(
    "inconsolata"
    "nerd-fonts-firacode"
    "SourceCodePro"
    "nerd-fonts-iosevka"
);

foreach ($tool in $toolsList) {
	choco install -y $tool
	Update-SessionEnvironment
}