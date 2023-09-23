﻿$ErrorActionPreference = 'Stop'

$toolsPath = Split-Path -parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  packageName = $env:ChocolateyPackageName
  file        = "$toolsPath\cmake-3.27.6-windows-i386.zip"
  file64      = "$toolsPath\cmake-3.27.6-windows-x86_64.zip"
  destination = $toolsPath
}

Get-ChocolateyUnzip @packageArgs
Remove-Item $toolsPath\*.zip -ea 0
