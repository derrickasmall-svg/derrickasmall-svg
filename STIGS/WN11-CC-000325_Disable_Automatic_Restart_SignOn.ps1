<#
.SYNOPSIS
    This PowerShell script ensures that Automatically signing in the last interactive user after restart must be disabled.

.NOTES
    Author          : Derrick Small
    LinkedIn        : linkedin.com/in/derrick-small-b223566/
    GitHub          : github.com/derrickasmall-svg/derrickasmall-svg
    Date Created    : 2026-06-05
    Last Modified   : 2026-06-06
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000325
   

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

# WN11-CC-000325
# Automatically signing in the last interactive user after restart must be disabled

$Path = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"

New-Item -Path $Path -Force | Out-Null
New-ItemProperty -Path $Path -Name "DisableAutomaticRestartSignOn" -Value 1 -PropertyType DWord -Force | Out-Null

Write-Host "WN11-CC-000325 remediated: Automatic restart sign-on disabled."
