<#
.SYNOPSIS
    This PowerShell script ensures that NTLM must be prevented from falling back to a Null session.

.NOTES
    Author          : Derrick Small
    LinkedIn        : linkedin.com/in/derrick-small-b223566/
    GitHub          : github.com/derrickasmall-svg/derrickasmall-svg
    Date Created    : 2026-06-05
    Last Modified   : 2026-06-06
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-SO-000180
   

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

# WN11-SO-000180
# NTLM must be prevented from falling back to a Null session

$Path = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0"

New-Item -Path $Path -Force | Out-Null
New-ItemProperty -Path $Path -Name "AllowNullSessionFallback" -Value 0 -PropertyType DWord -Force | Out-Null

Write-Host "WN11-SO-000180 remediated: NTLM null session fallback disabled."
