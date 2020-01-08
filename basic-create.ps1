﻿param (
    $FileName,
    $FilePath
)

$path = Join-Path $FilePath -ChildPath $FileName

New-Item $path -Force

$contents = "# Basic Script$([System.Environment]::NewLine)Script that creates this README, outputs this content, and then shows the content on the screen"

$contents | Out-File $path -Append

Get-Content $path