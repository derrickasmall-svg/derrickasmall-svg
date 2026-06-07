<#
.SYNOPSIS
    This PowerShell script ensures that Autoplay must be turned off for non-volume devices.

.NOTES
    Author          : Derrick Small
    LinkedIn        : linkedin.com/in/derrick-small-b223566/
    GitHub          : github.com/derrickasmall-svg/derrickasmall-svg
    Date Created    : 2026-06-05
    Last Modified   : 2026-06-06
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000180
   

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

# WN11-CC-000180
# Autoplay must be turned off for non-volume devices

$Path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer"

New-Item -Path $Path -Force | Out-Null
New-ItemProperty -Path $Path -Name "NoAutoplayfornonVolume" -Value 1 -PropertyType DWord -Force | Out-Null

Write-Host "WN11-CC-000180 remediated: Autoplay disabled for non-volume devices."
