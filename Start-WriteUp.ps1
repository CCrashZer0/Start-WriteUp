[CmdletBinding()]
Param (
    [Parameter(Mandatory=$true)]
    [string]$name,
    [Parameter(Mandatory=$true)]
    [string]$dir,
    [Parameter(Mandatory=$true)]
    [string]$platform
    # [string]$version =( $versionInformation )
)
 
$folder = $dir -replace '\s',''


New-Item -Path "./$folder/images" -ItemType Directory -Force | Out-Null
New-Item -Path $folder -Name "$folder.md" -ItemType File -Force | Out-Null

$content = "# $platform - $name `n 
---
## Recon `n 
---`n 
## Sacnning & Enumeration `n
---
# Congratulations you have just completed the $name challenge!
"

Add-Content -Path "./$folder/$folder.md" -Value "$content"


# If ($version -eq "version") {
#     Get-Content .\version.ps1
# } Else {
#     Write-Host " -version version to receive information."
# }
