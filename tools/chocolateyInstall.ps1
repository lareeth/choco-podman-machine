$packageName    = 'podman-machine'
$url            = 'https://github.com/boot2podman/machine/releases/download/v0.16/podman-machine.windows-amd64.exe'
$checksum       = '2AA33CAE99FC611FECB4E2679A752B48760AADCB7572A8C9FB6914237833CEB0'
$checksumType   = 'sha256'
$validExitCodes = @(0)
 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile `
  -PackageName $packageName `
  -Url64bit "$url" `
  -FileFullPath "$toolsDir\podman-machine.exe" `
  -Checksum64 $checksum `
  -ChecksumType64 $checksumType