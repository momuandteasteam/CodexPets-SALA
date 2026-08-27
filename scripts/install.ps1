param(
    [string]$CodexHome = $(
        if ($env:CODEX_HOME) {
            $env:CODEX_HOME
        } else {
            Join-Path $env:USERPROFILE '.codex'
        }
    )
)

$packageRoot = Join-Path $PSScriptRoot '..\pet'
$targetDir = Join-Path $CodexHome 'pets\sala'

New-Item -ItemType Directory -Force -Path $targetDir | Out-Null
Copy-Item -LiteralPath (Join-Path $packageRoot 'pet.json') -Destination $targetDir -Force
Copy-Item -LiteralPath (Join-Path $packageRoot 'spritesheet.webp') -Destination $targetDir -Force

Write-Host "Installed SALA to $targetDir"
