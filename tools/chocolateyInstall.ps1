$packageName    = 'podman-machine'
$url            = 'https://github.com/boot2podman/machine/releases/download/v0.17/podman-machine.windows-amd64.exe'
$checksum       = 'A5424DEDED50004F0F7AC488B5415C782770B7DA58F609C50DF22739F956BEA3'
$checksumType   = 'sha256'
$validExitCodes = @(0)
 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile `
  -PackageName $packageName `
  -Url64bit "$url" `
  -FileFullPath "$toolsDir\podman-machine.exe" `
  -Checksum64 $checksum `
  -ChecksumType64 $checksumType
