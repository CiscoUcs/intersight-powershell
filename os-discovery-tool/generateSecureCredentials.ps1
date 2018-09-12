<#

.SYNOPSIS
ODT stands for OS Discovery Toolset.
This is a simple ODT script to encrypt Cisco Intersight (TM) and vCenter credentials powered by Windows Powershell 4.0+

.DESCRIPTION
This tool needs the following inputs:

For the ESX platform:
1. vCenter Credentials
2. Location of encrypted Cisco Intersight Secret key

For the Windows platform:
1. Powershell Session Credentials for Active Directory Lookups
2. Location of encrypted Cisco Intersight Secret key

.EXAMPLE
>.\generateSecureCredentials.ps1 -Platform ESX -ConfigFile $env:USERPROFILE\Documents\discovery_config_esx.json -Credential (Get-Credential)
>.\generateSecureCredentials.ps1 -Platform Windows -ConfigFile $env:USERPROFILE\Documents\discovery_config_esx.json

.NOTES
This script can be run only on a Windows Powershell platform

.LINK
https://github.com/CiscoUcs/intersight-powershell

#>
[CmdletBinding()]
Param (
    [Parameter(Mandatory=$true, HelpMessage="Enter platform: ESX or Windows")]
    [ValidateSet("ESX","Windows")]
    [string]$Platform,

    [Parameter(Mandatory=$true, HelpMessage="Enter the full path of the discovery file (.json)")]
    [ValidateScript({
        if (Test-Path -Path $_) {
            $true
        } else {
            throw [System.Management.Automation.PSArgumentException]"Config file at path $_ does not exist, cannot proceed!"
            $false
        }
    })]
    [string]$ConfigFile,

    [Parameter(Mandatory=$true, HelpMessage="Please enter credentials")]
    [System.Management.Automation.PSCredential]$Credential
)

$efsService = Get-Service -Name EFS
if ($efsService.Status -ne "Running") {
    Write-Warning "[WARNING] Encrypting File System (EFS) is not running!  PEM and Credentials will not be encrypted on disk!"
}

try {
    $env = (Get-Content -Raw -Path (Resolve-Path $ConfigFile) | ConvertFrom-Json)
} catch {
    throw "[ERROR] Failed to retrieve discovery settings: $_"
    exit
}

try {
    #Encrypt the PEM file
    (Get-Item -Path $env.config.intersight_secret_file).Encrypt()
}
catch [System.Exception] {
    Write-Warning "[WARNING] Failed to encrypt PEM file on disk: $_"
}

#Get vCenter Credentials
if($platform -eq "ESX") {
    $Credential | Export-Clixml -Path $env.config.vCenter_creds_file
    try {
        #Encrypt the credential file
        (Get-Item -Path $env.config.vCenter_creds_file).Encrypt()
    }
    catch [System.Exception] {
        Write-Warning "[WARNING] Failed to encrypt credential file on disk: $_"
    }
}
elseif($platform -eq "Windows") {
    Write-Warning "[WARNING] Your Windows Session credentials will be used for Active Directory lookups, make sure you have at least read-only access."
}
Write-Verbose "Credentials generated!"
Write-Verbose "____________________________________"
