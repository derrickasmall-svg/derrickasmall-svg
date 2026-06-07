<#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Application event log is at least 32768 KB (32 MB).

.NOTES
    Author          : Derrick Small
    LinkedIn        : linkedin.com/in/derrick-small-b223566/
    GitHub          : github.com/derrickasmall-svg/derrickasmall-svg/
    Date Created    : 2026-06-05
    Last Modified   : 2026-06-06
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000330
    Documentation   : https://stigaview.com/products/win11/v2r7/WN11-AU-000500/

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

# WN11-CC-000330
# WinRM Client must not use Basic authentication

$Path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WinRM\Client"

New-Item -Path $Path -Force | Out-Null
New-ItemProperty -Path $Path -Name "AllowBasic" -Value 0 -PropertyType DWord -Force | Out-Null

Write-Host "WN11-CC-000330 remediated: WinRM Basic authentication disabled."
