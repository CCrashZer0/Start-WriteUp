Param (
    [string]$name,
    [string]$dir,
    [string]$platform,
    [string]$version
)
$folder = $name.Replace(' ','')

New-Item -Path "$dir\$folder\images" -ItemType Directory -Force | Out-Null

New-Item -Path "$dir\$folder" -Name "$folder.md" -ItemType File -Force | Out-Null

$content = "# $platform - $name `n 
---
## Recon `n 
---`n 
## Sacnning & Enumeration `n
---
# Congratulations you have just completed the $name from $platform challenge!
"

Add-Content -Path "$dir\$folder\$folder.md" -Value "$content"


Switch ($version)
{
    $true {Get-Content .\version.ps1}
    $false {}
}