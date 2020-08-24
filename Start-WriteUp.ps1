[CmdletBinding()]
Param (
    [string]$name,
    [string]$dir,
    [string]$platform,
    [string]$version
)
 


$folder = $dir -replace '\s',''


New-Item -Path "$folder\images" -ItemType Directory -Force | Out-Null
New-Item -Path "$name" -Name "$name.md" -ItemType File -Force | Out-Null

$content = "# $platform - $name `n 
---
## Recon `n 
---`n 
## Sacnning & Enumeration `n
---
# Congratulations you have just completed the $platform challenge!
"

Add-Content -Path "$folder/$name.md" -Value "$content"


# switch -Exact ($version) {
#     {[string]::IsNullOrWhiteSpace($version)} {
#     }

#     {$_ -match 'v' -or 'version'} {
#         Get-Content .\version.ps1
#     }
# }