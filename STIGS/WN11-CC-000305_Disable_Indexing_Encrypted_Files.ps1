<#
.SYNOPSIS
    This PowerShell script ensures that Indexing of encrypted files must be turned off.

.NOTES
    Author          : Derrick Small
    LinkedIn        : linkedin.com/in/joshmadakor/
    GitHub          : github.com/derrickasmall-svg/derrickasmall-svg
    Date Created    : 2024-09-09
    Last Modified   : 2024-09-09
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000305
   

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-AU-000500).ps1 
#>

# YOUR CODE GOES HERE

# WN11-CC-000305
# Indexing of encrypted files must be turned off

$Path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search"

New-Item -Path $Path -Force | Out-Null
New-ItemProperty -Path $Path -Name "AllowIndexingEncryptedStoresOrItems" -Value 0 -PropertyType DWord -Force | Out-Null

Write-Host "WN11-CC-000305 remediated: Indexing of encrypted files disabled."
