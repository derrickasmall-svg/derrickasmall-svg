<#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Application event log is at least 32768 KB (32 MB).

.NOTES
    Author          : Derrick Small
    LinkedIn        : https://www.linkedin.com/in/derrick-small-b223566/
    GitHub          : https://github.com/derrickasmall-svg/derrickasmall-svg
    Date Created    : 2026-06-05
    Last Modified   : 2026-06-06
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000360
    Documentation   : https://www.stigviewer.com/stigs/microsoft_windows_11/2026-02-12/finding/V-253421

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

# WN11-CC-000360
# WinRM Client must not use Digest authentication

$Path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WinRM\Client"

New-Item -Path $Path -Force | Out-Null
New-ItemProperty -Path $Path -Name "AllowDigest" -Value 0 -PropertyType DWord -Force | Out-Null

Write-Host "WN11-CC-000360 remediated: WinRM Digest authentication disabled."
